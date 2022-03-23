create or replace procedure ADD_DOCK_SP (
    p_station_id            IN VARCHAR,         -- Must not be NULL.  Must match a station in BC_STATION table.
    p_dock_id               IN INTEGER,         -- Must not be NULL.  Small integer (1,2,3,...)
    p_dock_status           IN VARCHAR,         -- Must not be NULL.  Value must match check constraint.
    p_bicycle_id            IN INTEGER          -- May be NULL. Any value must match existing value in BC_BICYCLE.
    )

 IS

    ex_error                   EXCEPTION;
    CHECK_CONSTRAINT_VIOLATED  EXCEPTION;
    PRAGMA EXCEPTION_INIT(CHECK_CONSTRAINT_VIOLATED, -2290);    

    lv_error_txt           VARCHAR(200);
    lv_dock_exists         INTEGER;
    lv_station_exists      INTEGER;
    lv_bicycle_exists      INTEGER;

BEGIN

    IF p_station_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (STATION_ID) in ADD_DOCK_SP. No dock added';
        RAISE ex_error;
    END IF;

    IF p_dock_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (DOCK_ID) in ADD_DOCK_SP. No dock added';
        RAISE ex_error;
    END IF;

    IF p_dock_status IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (DOCK_STATUS) in ADD_DOCK_SP. No dock added';
        RAISE ex_error;
    END IF;

    SELECT COUNT(*)
    INTO lv_dock_exists
    FROM BC_DOCK
    WHERE BC_DOCK.DOCK_ID = p_dock_id;

    IF lv_dock_exists > 0 THEN
    lv_error_txt := 'Dock number: ' || p_dock_id || ' already exists.';
    RAISE ex_error;
    END IF;

    SELECT COUNT(*)
    INTO lv_station_exists
    FROM BC_DOCK
    WHERE BC_DOCK.STATION_ID = p_station_id;

    IF lv_station_exists <= 0 THEN
    lv_error_txt := 'Invalid station identifier: ' || p_station_id;
    RAISE ex_error;
    END IF;

    SELECT COUNT(*)
    INTO lv_bicycle_exists
    FROM BC_DOCK
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;

    IF lv_bicycle_exists <= 0 THEN
    lv_error_txt := 'Invalid bicycle identifier: ' || p_bicycle_id;
    RAISE ex_error;
    END IF;

    IF p_dock_id < 0 THEN
    lv_error_txt := 'Invalid dock number: ' || p_dock_id;
    RAISE ex_error;
    end if;


    INSERT INTO BC_DOCK (
    STATION_ID,
    DOCK_ID,
    DOCK_STATUS,
    BICYCLE_ID)

    VALUES (
    p_station_id,
    p_dock_id,
    p_dock_status,
    p_bicycle_id
    );


    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN CHECK_CONSTRAINT_VIOLATED THEN  -- catch the ORA-02290 exception
    DBMS_OUTPUT.PUT_LINE('Invalid dock status.');
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('The error code is:  ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('The error msg is: ' || SQLERRM);
    ROLLBACK;

    commit;
    END ADD_DOCK_SP;

create or replace procedure BEGIN_TRIP_SP (
    p_trip_id               OUT INTEGER,        -- an output parameter
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match value value in BC_BICYCLE and BC_DOCK tables.
    p_start_time            IN DATE,            -- If NULL, use CURRENT_DATE system date value
    p_membership_id         IN INTEGER          -- Must not be NULL.  Must match value in BC_MEMBERSHIP table.
    )
IS
    
    ex_capacity_exceeded        EXCEPTION;
    ex_error                    EXCEPTION;    

    lv_error_txt                VARCHAR2(200);
    lv_match_bicycle            INTEGER;
    lv_match_membership         INTEGER;
    lv_bicycle_docked           INTEGER;
    lv_start_station            VARCHAR2(200);
    lv_vehicles_available       INTEGER;
    lv_docks_available          INTEGER;

    lv_memberpass_start         DATE;           
    lv_memberpass_end           DATE;          


BEGIN
    -- Checks if something is written in the p_bicycle_id parameter
    IF p_bicycle_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (Bicycle_ID) in BEGIN_TRIP_SP.  No trip added.';
        RAISE ex_error;
    end if;

     -- Checks if something is written in the p_membership_id parameter
    IF p_membership_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (Membership_ID) in BEGIN_TRIP_SP.  No trip added.';
        RAISE ex_error;
    end if;

    -- Checks if the value written in the p_bicycle_id parameter is in the BC_Bicycle table.
    -- If not, throws an exception.
    SELECT COUNT(*)
    INTO lv_match_bicycle
    FROM BC_BICYCLE
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;

    IF lv_match_bicycle <= 0 THEN
        lv_error_txt := 'Invalid bicycle identifier: ' || p_bicycle_id;
        RAISE ex_error;
    end if;

    -- Checks if the value written in the p_bicycle_id parameter is in the BC_DOCK table.
    -- If not, throws an exception.
    SELECT COUNT(*)
    INTO lv_bicycle_docked
    FROM BC_DOCK
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;

    IF lv_bicycle_docked <= 0 THEN
        lv_error_txt := 'Bicycle: ' || p_bicycle_id || ' is not currently docked.';
        RAISE ex_error;
    end if;

    -- Checks if the membership is valid on the day the user is going to rent the bike.
    -- If not, throws an exception.
    IF lv_memberpass_start > p_start_time OR lv_memberpass_end < p_start_time THEN
        lv_error_txt := 'Invalid Membership: ' || p_membership_id;
        RAISE ex_error;
    end if;

    -- Checks if the value written in the p_membership_id parameter is in the BC_Membership table.
    -- If not, throws an exception.
    SELECT COUNT(*)
    INTO lv_match_membership
    FROM BC_MEMBERSHIP
    WHERE BC_MEMBERSHIP.MEMBERSHIP_ID = p_membership_id;

    IF lv_match_membership <= 0 THEN
        lv_error_txt := 'Invalid Membership: ' || p_membership_id;
        RAISE ex_error;
    end if;

    -- Assigns the given membership id's starttime into the variable lv_memberpass_start
    SELECT MEMBER_PASS_START_TIME
    INTO lv_memberpass_start
    FROM BC_MEMBERSHIP
    WHERE BC_MEMBERSHIP.MEMBERSHIP_ID = p_membership_id;

    -- Assigns the given membership id's starttime into the variable lv_memberpass_end
    SELECT MEMBER_PASS_END_TIME
    INTO lv_memberpass_end
    FROM BC_MEMBERSHIP
    WHERE BC_MEMBERSHIP.MEMBERSHIP_ID = p_membership_id;

    
    -- Updates the status of the bicycle to 'in use' with the bicycle given in the parameter p_bicycle_id.
    UPDATE BC_BICYCLE_STATUS
    SET BICYCLE_STATUS = 'in use'
    WHERE BC_BICYCLE_STATUS.BICYCLE_ID = p_bicycle_id;

    -- Assigns the given bicycle id's start station into the variable lv_start_station
    SELECT STATION_ID
    INTO lv_start_station
    FROM BC_DOCK
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;

    -- Updates the BC_Dock table's columns: status and bicycle ID to make the dock available.
    UPDATE BC_DOCK
    SET DOCK_STATUS = 'unoccupied', BICYCLE_ID = null
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;

    -- Updates BC_Station table's columns so that its one less available bike on the station the bicycle has been rented from.
    UPDATE BC_STATION
    SET STATION_VEHICLES_AVAILABLE = STATION_VEHICLES_AVAILABLE - 1
    WHERE STATION_ID = lv_start_station;

    -- Updates BC_Station table's columns so that its one more available dock on the station the bicycle has been rented from.
    UPDATE BC_STATION
    SET STATION_DOCKS_AVAILABLE = BC_STATION.STATION_DOCKS_AVAILABLE + 1
    WHERE STATION_ID = lv_start_station;

    -- Assigns the value of the total bikes available into a variable called lv_vehicles_available.
    SELECT STATION_VEHICLES_AVAILABLE
    INTO lv_vehicles_available
    FROM BC_STATION
    WHERE BC_STATION.STATION_ID = lv_start_station;

    -- Checks if the station has vehicles available.
    -- If it does have vehicles available it updates the station to renting.
    -- If it does not have vehicles available it updates the station to not renting.
    IF lv_vehicles_available > 0 THEN
        UPDATE BC_STATION
        SET STATION_IS_RENTING = 1
        WHERE BC_STATION.STATION_ID = lv_start_station;

        UPDATE BC_STATION
        SET STATION_LAST_REPORTED = CURRENT_DATE
        WHERE BC_STATION.STATION_ID = lv_start_station;
    ELSE
        UPDATE BC_STATION
        SET STATION_IS_RENTING = 0
        WHERE BC_STATION.STATION_ID = lv_start_station;

        UPDATE BC_STATION
        SET STATION_LAST_REPORTED = CURRENT_DATE
        WHERE BC_STATION.STATION_ID = lv_start_station;
    end if;

    -- Assigns the value of the total docks available into a variable called lv_docks_available.
    SELECT STATION_DOCKS_AVAILABLE
    INTO lv_docks_available
    FROM BC_STATION
    WHERE BC_STATION.STATION_ID = lv_start_station;

    -- Checks if the station has docks available.
    -- If it does have docks available it updates the station to returning.
    -- If it does not have docks available it updates the station to not returning.
    IF lv_docks_available = 0 THEN
        UPDATE BC_STATION
        SET STATION_IS_RETURNING = 0
        WHERE BC_STATION.STATION_ID = lv_start_station;

        UPDATE BC_STATION
        SET STATION_LAST_REPORTED = CURRENT_DATE
        WHERE BC_STATION.STATION_ID = lv_start_station;
    ELSE
        UPDATE BC_STATION
        SET STATION_IS_RETURNING = 1
        WHERE BC_STATION.STATION_ID = lv_start_station;

        UPDATE BC_STATION
        SET STATION_LAST_REPORTED = CURRENT_DATE
        WHERE BC_STATION.STATION_ID = lv_start_station;
    end if;

    -- Checks if start_time is null and then inserts with the given start time.
    -- If not, inserts start_time with the current_date function.
    IF p_start_time IS NULL THEN
        INSERT INTO BC_TRIP (
        TRIP_ID,
        BICYCLE_ID,
        START_STATION_ID,
        TRIP_START_TIME,
        MEMBERSHIP_ID
        )

        VALUES (
        (select max(TRIP_ID) + 1 FROM BC_TRIP),
        p_bicycle_id,
        lv_start_station,
        CURRENT_DATE,
        p_membership_id
        )
        RETURNING TRIP_ID INTO p_trip_id;

    ELSE
        INSERT INTO BC_TRIP (
        TRIP_ID,
        BICYCLE_ID,
        START_STATION_ID,
        TRIP_START_TIME,
        MEMBERSHIP_ID
        )

        VALUES (
        (select max(TRIP_ID) + 1 FROM BC_TRIP),
        p_bicycle_id,
        lv_start_station,
        p_start_time,
        p_membership_id
        )
        RETURNING TRIP_ID INTO p_trip_id;
    end if;

    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

    commit;
END BEGIN_TRIP_SP;

create or replace procedure CREATE_ACCOUNT_SP(
    p_account_id                OUT INTEGER, -- an output parameter
    p_account_first_name        IN VARCHAR, -- Must not be NULL
    p_account_last_name         IN VARCHAR, -- Must not be NULL
    p_account_email             IN VARCHAR, -- Must be unique
    p_account_password          IN VARCHAR, -- Must not be NULL
    p_account_mobile_phone      IN VARCHAR, -- Must not be NULL
    p_account_street            IN VARCHAR, -- Must not be NULL
    p_account_apartment         IN VARCHAR,
    p_account_city              IN VARCHAR, -- Must not be NULL
    p_account_state_province    IN VARCHAR, -- Must not be NULL
    p_account_postal_code       IN VARCHAR  -- Must not be NULL
)


IS

ex_error                            EXCEPTION;
lv_error_txt                        VARCHAR2(200);
lv_exists                           INTEGER;

BEGIN

SELECT COUNT(*)
    INTO lv_exists
    FROM BC_ACCOUNT
    WHERE BC_ACCOUNT.ACCOUNT_EMAIL = p_account_email;


/*
Hvis brukeren allerede eksisterer
*/
    IF lv_exists > 0  THEN
          lv_error_txt := 'Duplicate email address. Account email addresses must be unique.';
          RAISE ex_error;
      END IF;


 /*
Hvis det ikke er tilstrekkelig informasjon
 */
    IF p_account_first_name IS NULL THEN
          lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_first_name;
          RAISE ex_error;
      end if;

/*
Hvis det ikke er tilstrekkelig informasjon
 */
     IF p_account_last_name IS NULL THEN
          lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_last_name;
          RAISE ex_error;
      end if;


/*
Hvis brukeren sitt passord er feil/ ikke korrekt/ ikke lagt inn
 */
        IF p_account_password IS NULL THEN
            lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_password;
            RAISE ex_error;
        end if;


 /*
Hvis det ikke er tilstrekkelig informasjon
 */
     IF p_account_mobile_phone IS NULL THEN
          lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_mobile_phone;
          RAISE ex_error;
      end if;


 /*
Hvis det ikke er tilstrekkelig informasjon
 */
     IF p_account_street IS NULL THEN
          lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_street;
          RAISE ex_error;
      end if;

 /*
Hvis det ikke er tilstrekkelig informasjon
 */
     IF p_account_city IS NULL THEN
          lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_city;
          RAISE ex_error;
      end if;



 /*
Hvis det ikke er tilstrekkelig informasjon
 */
     IF p_account_state_province IS NULL THEN
          lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_state_province;
          RAISE ex_error;
      end if;



 /*
Hvis det ikke er tilstrekkelig informasjon
 */
     IF p_account_postal_code IS NULL THEN
          lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_postal_code;
          RAISE ex_error;
      end if;


 /*
 EXCEPTION
 */

INSERT INTO
BC_ACCOUNT (
ACCOUNT_ID,
ACCOUNT_FIRST_NAME,
ACCOUNT_LAST_NAME,
ACCOUNT_EMAIL,
ACCOUNT_PASSWORD,
ACCOUNT_MOBILE_PHONE,
ACCOUNT_STREET,
ACCOUNT_APARTMENT,
ACCOUNT_CITY,
ACCOUNT_STATE_PROVINCE,
ACCOUNT_POSTAL_CODE)


VALUES (
(select max(ACCOUNT_ID) + 1 FROM BC_ACCOUNT),
p_account_first_name,
p_account_last_name,
p_account_email,
p_account_password,
p_account_mobile_phone,
p_account_street,
p_account_apartment,
p_account_city,
p_account_state_province,
p_account_postal_code
)

RETURNING ACCOUNT_ID INTO p_account_id;


    EXCEPTION
        WHEN ex_error THEN
            DBMS_OUTPUT.PUT_LINE(lv_error_txt);
        ROLLBACK;

        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An error occurred.');
            DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
            DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
        ROLLBACK;
            
    commit;
END CREATE_ACCOUNT_SP;

create or replace procedure CREATE_BICYCLE_SP (
    p_bicycle_id            OUT INTEGER,        -- an output parameter
    p_bicycle_type          IN VARCHAR,         -- Must not be NULL.
    p_capacity              IN INTEGER, 
    p_make                  IN VARCHAR,
    p_model                 IN VARCHAR,
    p_color                 IN VARCHAR,
    p_year_acquired         IN INTEGER,
    p_status                IN VARCHAR,         -- Must not be NULL
    p_latitude              IN INTEGER, 
    p_longitude             IN INTEGER,
    p_current_power         IN NUMBER,          -- Must be between 0 and 100
    p_current_range         IN NUMBER,          -- Range in meters.  Must not be a negative number
    p_updated               IN DATE             
    )
IS
    ex_error                   EXCEPTION;
    CHECK_CONSTRAINT_VIOLATED  EXCEPTION;
    PRAGMA EXCEPTION_INIT(CHECK_CONSTRAINT_VIOLATED, -2290);

    lv_error_txt               VARCHAR2(200);
    lv_exists                  INTEGER;


BEGIN
    /*
    Sjekker om sykkelen eksisterer.
    */
    SELECT COUNT(*)
    INTO lv_exists
    FROM BC_BICYCLE
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;

    /*
    Hvis det er feil sykkeltype.
    */
      IF p_bicycle_type IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_bicycle_type) in CREATE_BICYCLE_SP. No bicycle added';
        RAISE ex_error;
      end if;

    /*
     Hvis statusen ikke eksisterer
    */
      IF p_status IS NULL THEN
          lv_error_txt := 'Missing mandatory value for parameter (p_status) in CREATE_BICYCLE_SP. No bicycle added';
          RAISE ex_error;
      end if;

    /*
     Om sykkelnummeret allerede eksisterer så gir den feilmelding.
    */
      IF lv_exists > 0  THEN
          lv_error_txt := 'Bicycle number already exists' || p_bicycle_id;
          RAISE ex_error;
      END IF;

    /*
     At batterien ikke kan være mindre enn 0 eller mer enn 100, ellers gis det feilmelding.
    */
      IF p_current_power NOT BETWEEN 0 AND 100 THEN
          lv_error_txt := 'Invalid bicycle current power value: ' ||  p_current_power;
          RAISE ex_error;
      end if;

    /*
     At breddegraden ikke kan være mindre enn -90 eller mer enn 90, ellers gis det feilmelding.
    */
          IF p_latitude < -90  OR p_latitude > 90 THEN
        lv_error_txt:= 'Invalid Latitude: ' || p_latitude;
        RAISE ex_error;
    end if;

    /*
     At lengdegraden ikke kan være mindre enn -180 eller mer enn 180, ellers gis det feilmelding.
    */

    IF p_longitude < -180 OR p_longitude > 180 THEN
        lv_error_txt := 'Invalid longitude: ' || p_longitude;
        RAISE ex_error;
    end if;

    /*
     Det vises hvor langt sykkelen har gått, derfor kan verdien ikke være mindre enn 0, ellers gis det feilmelding.
    */

      IF p_current_range < 0 THEN
          lv_error_txt := 'Invalid range: ' || p_current_range;
          RAISE ex_error;
      end if;

    /*
    At kapasiteten på sykkelen ikke kan være mindre enn 0, ellers gis det feil melding.
    */

      IF p_capacity < 0 THEN
        lv_error_txt := 'Invalid bicycle rider capacity: ' || p_capacity;
        RAISE ex_error;
    end if;

    
INSERT INTO BC_BICYCLE(
BICYCLE_ID,
BICYCLE_TYPE,
BICYCLE_RIDER_CAPACITY,
BICYCLE_MAKE,
BICYCLE_MODEL,
BICYCLE_COLOR,
BICYCLE_YEAR_ACQUIRED,
BICYCLE_STATUS,
BICYCLE_LATITUDE,
BICYCLE_LONGITUDE,
BICYCLE_CURRENT_POWER,
BICYCLE_CURRENT_RANGE,
BICYCLE_STATUS_UPDATED
)

values (
(select max(BC_BICYCLE.BICYCLE_ID) + 1 FROM BC_BICYCLE),
p_bicycle_type,
p_capacity,
p_make,
p_model,
p_color,
p_year_acquired,
p_status,
p_latitude,
p_longitude,
p_current_power,
p_current_range,
p_updated
)

RETURNING BICYCLE_ID INTO p_bicycle_id;

    /*
     Error kode
    */
EXCEPTION
WHEN ex_error THEN
DBMS_OUTPUT.PUT_LINE(lv_error_txt);
ROLLBACK;

WHEN CHECK_CONSTRAINT_VIOLATED THEN  -- catch the ORA-02290 exception
DBMS_OUTPUT.PUT_LINE('Invalid bicycle type or bicycle status. ');
DBMS_OUTPUT.PUT_LINE('Bicycle type: ' || p_bicycle_type);
DBMS_OUTPUT.PUT_LINE('Bicycle status: ' || p_status);
ROLLBACK;

WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('An error occurred.');
DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
ROLLBACK;

commit;
END CREATE_BICYCLE_SP;

create or replace procedure CREATE_STATION_SP (
    p_station_id            IN VARCHAR,         -- Must not be NULL.  
    p_station_name          IN VARCHAR,         -- Must not be NULL.
    p_station_short_name    IN VARCHAR,
    p_latitude              IN NUMBER,          -- Must not be NULL
    p_longitude             IN NUMBER,          -- Must not be NULL
    p_address               IN VARCHAR,
    p_postal_code           IN VARCHAR,
    p_contact_phone         IN VARCHAR, 
    p_capacity              IN INTEGER,         -- Must not be NULL
    p_vehicles_available    IN INTEGER,         -- Must not be NULL
    p_docks_available       IN INTEGER,         -- Must not be NULL
    p_is_renting            IN CHAR,            -- Must not be NULL.  
    p_is_returning          IN CHAR,            -- Must not be NULL.
    p_last_report           IN DATE,            -- Must not be NULL
    p_program_id            IN VARCHAR          -- Must not be NULL
    )

IS
    
    ex_capacity_exceeded        EXCEPTION;
    ex_error                    EXCEPTION;

    lv_error_txt                VARCHAR2(200);
    lv_exists                   INTEGER;


BEGIN

    SELECT COUNT(*)
    INTO lv_exists
    FROM BC_PROGRAM
    WHERE BC_PROGRAM.PROGRAM_ID = p_program_id;

    IF lv_exists <= 0 THEN
    lv_error_txt := 'Invalid Program: ' || p_program_id;
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_station_id parameter
    IF p_station_id IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Station_ID) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;
    
    -- Checks if something is written in the p_station_name parameter
    IF p_station_name IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Station_Name) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;

    -- Checks if something is written in the p_latitude parameter    
    IF p_latitude IS NULL  THEN
    lv_error_txt := 'Missing mandatory value for parameter (Latitude) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;

    -- Checks if something is written in the p_longitude parameter
    IF p_longitude IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Longitude) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;

    -- Checks if something is written in the p_capacity parameter    
    IF p_capacity IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Capacity) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;

    -- Checks if something is written in the p_vehicles_available parameter    
    IF p_vehicles_available IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Vehicles_Available) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;

    -- Checks if something is written in the p_docks_available parameter    
    IF p_docks_available IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Docks_Available) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;

    -- Checks if something is written in the p_is_renting parameter    
    IF p_is_renting IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Is_Renting) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;

    -- Checks if something is written in the p_is_returning parameter    
    IF p_is_returning IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Is_Returning) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;

    -- Checks if something is written in the p_last_report parameter    
    IF p_last_report IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Last_Report) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;

    -- Checks if something is written in the p_program_id parameter    
    IF p_program_id IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Program_ID) in CREATE_STATION_SP.  No station added.';
    RAISE ex_error;
    end if;

    -- Checks if latitude value is between -90 or 90  
    IF p_latitude < -90 OR p_latitude > 90 THEN
    lv_error_txt := 'Invalid Latitude: ' || p_latitude;
    RAISE ex_error;
    END IF;

    -- Checks if longitude value is between -180 or 180      
    IF p_longitude < -180 OR p_longitude > 180 THEN
    lv_error_txt := 'Invalid Longitude: ' || p_longitude;
    RAISE ex_error;
    end if;

    -- Checks if the sum of vehicles available and docks available doesnt exceed the capacity.    
    IF p_capacity < p_vehicles_available + p_docks_available THEN
    lv_error_txt := 'Capacity exceeded! Read the description under for information about the capacity:' || CHR(10) ||
                    'The sum of the number of vehicles: ' || p_vehicles_available || CHR(10) ||
                    'and available docks: ' || p_docks_available || CHR(10) ||
                    'exceeds the capacity: ' || p_capacity || ' of the station.';
    RAISE ex_error;
    end if;


    -- Inserts the parameters into the BC_Station table
    INSERT INTO BC_STATION (
    STATION_ID,
    STATION_NAME,
    STATION_SHORT_NAME,
    STATION_LATITUDE,
    STATION_LONGITUDE,
    STATION_ADDRESS,
    STATION_POSTAL_CODE,
    STATION_CONTACT_PHONE,
    STATION_CAPACITY,
    STATION_VEHICLES_AVAILABLE,
    STATION_DOCKS_AVAILABLE,
    STATION_IS_RENTING,
    STATION_IS_RETURNING,
    STATION_LAST_REPORTED,
    PROGRAM_ID
    )

    VALUES (
    p_station_id,
    p_station_name,
    p_station_short_name,
    p_latitude,
    p_longitude,
    p_address,
    p_postal_code,
    p_contact_phone,
    p_capacity,
    p_vehicles_available,
    p_docks_available,
    p_is_renting,
    p_is_returning,
    p_last_report,
    p_program_id
    );

EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;
    
    commit;    
END CREATE_STATION_SP;

create or replace procedure PURCHASE_MEMBERSHIP_SP (
    p_membership_id         OUT INTEGER,        -- an output parameter
    p_pass_type             IN VARCHAR,         -- Must not be NULL.   Must match a pass_type value in BC_PASS
    p_pass_total            IN NUMBER,          -- Must not be NULL
    p_start_time            IN DATE,            -- Must not be NULL
--  p_end_time              IN DATE,            -- Must not be NULL.   In a more sophisticated vesion of this procedure,
    -- we could have the end time calculated based on the pass type.
    -- Since we made the sophisticated version, we dont need this parameter anymore.
    p_account_id            IN INTEGER          -- Must not be NULL.  Must match an account_id value in BC_ACCOUNT
)



    IS

    ex_error                    EXCEPTION;

    lv_error_txt                VARCHAR(200);
    lv_exists                   INTEGER;
    lv_pass_type_counter        INTEGER;
    lv_account_counter          INTEGER;
    lv_end_date                 DATE;
    lv_pass_id                  INTEGER;


BEGIN
    SELECT COUNT(*)
    INTO lv_exists
    FROM BC_MEMBERSHIP
    WHERE BC_MEMBERSHIP.MEMBERSHIP_ID = p_membership_id;

    -- Checks if something is written in the p_pass_type parameter
    IF p_pass_type IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_pass_type) in PURCHASE_MEMBERSHIP_SP.  No membership added.';
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_pass_total parameter
    IF p_pass_total IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_pass_total) in PURCHASE_MEMBERSHIP_SP.  No membership added.';
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_start_time parameter
    IF p_start_time IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_start_time) in PURCHASE_MEMBERSHIP_SP.  No membership added.';
        RAISE ex_error;
    END IF;

    /*  Since we made the sophisticated version we dont need to check this parameter anymore.
        IF p_end_time IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_start_time) in PURCHASE_MEMBERSHIP_SP.  No membership added.';
        RAISE ex_error;
        END IF;*/

    -- Checks if something is written in the p_account_id parameter
    IF p_account_id IS NULL THEN
        lv_error_txt := ('Missing mandatory value for parameter (p_account_id) in PURCHASE_MEMBERSHIP_SP.  No membership added.');
        RAISE ex_error;
    END IF;

-- Here we check if p_pass_type is 'Fun!Pass'
    IF p_pass_type = 'FUN!Pass' THEN
        -- If it is then the membership will be 1 today
        SELECT (p_start_time+1) INTO lv_end_date FROM DUAL;

-- Here we check if the p_pass_type is Heartland Monthly Pass, if it is- then the membership will be 30 days now.
    ELSIF p_pass_type = 'Heartland Monthly Pass' THEN
        SELECT (p_start_time+30) INTO lv_end_date FROM DUAL;

-- Here we check if the p_pass_type is 'Heartland Pass (Annual pay)', if it is then the membership will be 365 days today.
    ELSIF p_pass_type = 'Heartland Pass (Annual pay)' THEN
        SELECT (p_start_time+365) INTO lv_end_date FROM DUAL;
    end if;

    --Here we give the lv_pass_id variable the value that will be on pass_id, for the pass_type.
    SELECT PASS_ID INTO lv_pass_id
    FROM BC_PASS
    WHERE BC_PASS.PASS_TYPE = p_pass_type;

-- Here we check if pass_type exist that is given on p_pass_type
    SELECT COUNT(*) INTO lv_pass_type_counter
    FROM BC_PASS
    WHERE BC_PASS.PASS_TYPE = p_pass_type;

-- If it does not find the value, then this error will come up.
    IF lv_pass_type_counter <= 0 THEN
        lv_error_txt := 'Invalid pass: ' || p_pass_type;
        RAISE ex_error;
    END IF;


-- Here we check if account ID exist like it is given in p_account_id
    SELECT COUNT(*) INTO lv_account_counter
    FROM BC_ACCOUNT
    WHERE BC_ACCOUNT.ACCOUNT_ID = p_account_id;

-- If lv_account_counter does not have a value, then print out 'invalid account'.
    IF lv_account_counter = 0 THEN
        lv_error_txt := 'Invalid account: ' || p_account_id;
        RAISE ex_error;
    END IF;

    -- Inserts the parameters into the BC_MEMBERSHIP table
    INSERT INTO BC_MEMBERSHIP (
        MEMBERSHIP_ID,
        MEMBER_PASS_TOTAL,
        MEMBER_PASS_START_TIME,
        MEMBER_PASS_END_TIME,
        ACCOUNT_ID
    )

    VALUES (
               (select max(BC_MEMBERSHIP.MEMBERSHIP_ID) + 1 FROM BC_MEMBERSHIP),
               p_pass_total,
               p_start_time,
               lv_end_date,
               p_account_id
           )

    RETURNING MEMBERSHIP_ID INTO p_membership_id;

    UPDATE BC_MEMBERSHIP
    SET PASS_ID = lv_pass_id
    WHERE MEMBERSHIP_ID = p_membership_id;

EXCEPTION
    WHEN ex_error THEN
        DBMS_OUTPUT.PUT_LINE(lv_error_txt);
        ROLLBACK;

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
        DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
        ROLLBACK;

        commit;
END PURCHASE_MEMBERSHIP_SP;
