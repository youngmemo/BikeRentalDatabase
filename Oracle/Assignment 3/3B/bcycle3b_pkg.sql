CREATE OR REPLACE PACKAGE BODY bcycle3b_pkg

IS
/* See Assignment 2 bcycle procedures.sql for the specifications for the first 7 procedures here.
   Specifications for the new procedures are found below.
*/
procedure CREATE_ACCOUNT_PP (
    p_account_id            OUT INTEGER,        -- an output parameter
    p_account_first_name    IN VARCHAR,         -- Must not be NULL
    p_account_last_name     IN VARCHAR,         -- Must not be NULL
    p_account_email         IN VARCHAR,         -- Must be unique
    p_account_password      IN VARCHAR,         -- Must not be NULL
    p_account_mobile_phone  IN VARCHAR,         -- Must not be NULL
    p_account_street        IN VARCHAR,         -- Must not be NULL
    p_account_apartment     IN VARCHAR,
    p_account_city          IN VARCHAR,         -- Must not be NULL
    p_account_state_province IN VARCHAR,       -- Must not be NULL
    p_account_postal_code   IN VARCHAR         -- Must not be NULL
    )

IS

    ex_error                            EXCEPTION;
    lv_error_txt                        VARCHAR2(200);
    lv_email_counter                    INTEGER;

BEGIN

    -- Counts how many emails exists on the given parameter.
    SELECT COUNT(*)
    INTO lv_email_counter
    FROM BC_ACCOUNT
    WHERE BC_ACCOUNT.ACCOUNT_EMAIL = p_account_email;

    -- Checks if the email exists
    -- If it does, throws an exception.
    IF lv_email_counter > 0  THEN
        lv_error_txt := 'Duplicate email address. Account email addresses must be unique.';
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_account_first_name parameter
    -- If not, throws an exception.
    IF p_account_first_name IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_PP.  No account added. ' || p_account_first_name;
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_account_last_name parameter
    -- If not, throws an exception.
    IF p_account_last_name IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_PP.  No account added. ' || p_account_last_name;
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_account_password parameter
    -- If not, throws an exception.
    IF p_account_password IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_PP.  No account added. ' || p_account_password;
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_account_mobile parameter
    -- If not, throws an exception.
    IF p_account_mobile_phone IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_PP.  No account added. ' || p_account_mobile_phone;
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_account_street parameter
    -- If not, throws an exception.
    IF p_account_street IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_PP.  No account added. ' || p_account_street;
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_account_city parameter
    -- If not, throws an exception.
    IF p_account_city IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_PP.  No account added. ' || p_account_city;
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_account_state_province parameter
    -- If not, throws an exception.
    IF p_account_state_province IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_PP.  No account added. ' || p_account_state_province;
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_account_postal_code parameter
    -- If not, throws an exception.
     IF p_account_postal_code IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_PP.  No account added. ' || p_account_postal_code;
        RAISE ex_error;
    END IF;


    -- Inserts the values
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
    (SELECT MAX(BC_ACCOUNT.ACCOUNT_ID) + 1 FROM BC_ACCOUNT), --Puts in +1 higher value than the highest value on highest ACCOUNT_ID number.
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

    COMMIT;

-- Exceptions
EXCEPTION
    WHEN ex_error THEN
        DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
        DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

END CREATE_ACCOUNT_PP;

procedure PURCHASE_MEMBERSHIP_PP (
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
    lv_membership_counter       INTEGER;
    lv_pass_type_counter        INTEGER;
    lv_account_counter          INTEGER;
    lv_end_date                 DATE;
    lv_pass_id                  INTEGER;


BEGIN

    SELECT COUNT(*)
    INTO lv_membership_counter
    FROM BC_MEMBERSHIP
    WHERE BC_MEMBERSHIP.MEMBERSHIP_ID = p_membership_id;

 -- Checks if something is written in the p_pass_type parameter
    IF p_pass_type IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (p_pass_type) in PURCHASE_MEMBERSHIP_PP.  No membership added.';
    RAISE ex_error;
    END IF;

 -- Checks if something is written in the p_pass_total parameter
    IF p_pass_total IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (p_pass_total) in PURCHASE_MEMBERSHIP_PP.  No membership added.';
    RAISE ex_error;
    END IF;

 -- Checks if something is written in the p_start_time parameter
    IF p_start_time IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (p_start_time) in PURCHASE_MEMBERSHIP_PP.  No membership added.';
    RAISE ex_error;
    END IF;

/*  Since we made the sophisticated version we dont need to check this parameter anymore.
    IF p_end_time IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (p_start_time) in PURCHASE_MEMBERSHIP_PP.  No membership added.';
    RAISE ex_error;
    END IF;*/

 -- Checks if something is written in the p_account_id parameter
    IF p_account_id IS NULL THEN
    lv_error_txt := ('Missing mandatory value for parameter (p_account_id) in PURCHASE_MEMBERSHIP_PP.  No membership added.');
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
    lv_error_txt := 'Invalid membership pass type: ' || p_pass_type;
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
    (SELECT MAX(BC_MEMBERSHIP.MEMBERSHIP_ID) + 1 FROM BC_MEMBERSHIP),
    p_pass_total,
    p_start_time,
    lv_end_date,
    p_account_id
    )

    RETURNING MEMBERSHIP_ID INTO p_membership_id;

 -- Updates the pass_id for the given membership_id

    UPDATE BC_MEMBERSHIP
    SET PASS_ID = lv_pass_id
    WHERE MEMBERSHIP_ID = p_membership_id;

    COMMIT;

    EXCEPTION
        WHEN ex_error THEN
        DBMS_OUTPUT.PUT_LINE(lv_error_txt);
        ROLLBACK;

        WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
        DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
        ROLLBACK;

END PURCHASE_MEMBERSHIP_PP;

procedure CREATE_STATION_PP (
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
    p_is_renting            IN NUMBER,            -- Must not be NULL.
    p_is_returning          IN NUMBER,            -- Must not be NULL.
    p_last_report           IN DATE,            -- Must not be NULL
    p_program_id            IN VARCHAR          -- Must not be NULL
    )
IS

    ex_error                    EXCEPTION;

    lv_error_txt                VARCHAR2(200);
    lv_program_counter          INTEGER;


BEGIN

    -- Checks if the program id given exists.
    -- If not, raises exception.
    SELECT COUNT(*)
    INTO lv_program_counter
    FROM BC_PROGRAM
    WHERE BC_PROGRAM.PROGRAM_ID = p_program_id;

    IF lv_program_counter <= 0 THEN
    lv_error_txt := 'Invalid Program: ' || p_program_id;
    RAISE ex_error;
    END IF;


    -- Checks if something is written in the p_station_id parameter
    IF p_station_id IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Station_ID) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_station_name parameter
    IF p_station_name IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Station_Name) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_latitude parameter
    IF p_latitude IS NULL  THEN
    lv_error_txt := 'Missing mandatory value for parameter (Latitude) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_longitude parameter
    IF p_longitude IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Longitude) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_capacity parameter
    IF p_capacity IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Capacity) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_vehicles_available parameter
    IF p_vehicles_available IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Vehicles_Available) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_docks_available parameter
    IF p_docks_available IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Docks_Available) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_is_renting parameter
    IF p_is_renting IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Is_Renting) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_is_returning parameter
    IF p_is_returning IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Is_Returning) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_last_report parameter
    IF p_last_report IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Last_Report) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_program_id parameter
    IF p_program_id IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (Program_ID) in CREATE_STATION_PP.  No station added.';
    RAISE ex_error;
    END IF;

    -- Checks if latitude value is between -90 or 90
    IF p_latitude NOT BETWEEN -90 AND 90 THEN
    lv_error_txt := 'Invalid Latitude: ' || p_latitude;
    RAISE ex_error;
    END IF;

    -- Checks if longitude value is between -180 or 180
    IF p_longitude NOT BETWEEN -180 AND 180 THEN
    lv_error_txt := 'Invalid Longitude: ' || p_longitude;
    RAISE ex_error;
    END IF;

    -- Checks if the sum of vehicles available and docks available doesnt exceed the capacity.
    IF p_capacity < p_vehicles_available + p_docks_available THEN
    lv_error_txt := 'Capacity exceeded! Read the description under for information about the capacity:' || CHR(10) ||
                    'The sum of the number of vehicles: ' || p_vehicles_available || CHR(10) ||
                    'and available docks: ' || p_docks_available || CHR(10) ||
                    'exceeds the capacity: ' || p_capacity || ' of the station.';
    RAISE ex_error;
    END IF;


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

    COMMIT;

EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

END CREATE_STATION_PP;

procedure CREATE_BICYCLE_PP (
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
    check_constraint_violated  EXCEPTION;
    PRAGMA EXCEPTION_INIT(check_constraint_violated, -2290);

    lv_error_txt               VARCHAR2(200);
    lv_bicycle_counter         INTEGER;


BEGIN

    -- Counts total bicycles through the given parameter p_bicycle_id
    SELECT COUNT(*)
    INTO lv_bicycle_counter
    FROM BC_BICYCLE
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;

    -- Checks if something is written in the p_bicycle_type parameter
    -- If not, throws an exception.
    IF p_bicycle_type IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_bicycle_type) in CREATE_BICYCLE_PP. No bicycle added';
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_status parameter
    -- If not, throws an exception.
    IF p_status IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_status) in CREATE_BICYCLE_PP. No bicycle added';
        RAISE ex_error;
    END IF;

    -- Checks if the given bicycle_id exists.
    IF lv_bicycle_counter > 0 THEN
        lv_error_txt := 'Bicycle number already exists' || p_bicycle_id;
        RAISE ex_error;
    END IF;

    -- Checks if the power is between 0 and 100
    -- If not, raises exception.
    IF p_current_power NOT BETWEEN 0 AND 100 THEN
        lv_error_txt := 'Invalid bicycle current power value: ' ||  p_current_power;
        RAISE ex_error;
    END IF;

    -- Checks if the latitude is between -90 and 90.
    -- If not, throws an exception.
    IF p_latitude NOT BETWEEN -90 AND 90 THEN
        lv_error_txt:= 'Invalid Latitude: ' || p_latitude;
        RAISE ex_error;
    END IF;

    -- Checks if the longitude is between -180 and 180.
    -- If not, throws an exception.
    IF p_longitude NOT BETWEEN -180 AND 180 THEN
        lv_error_txt := 'Invalid longitude: ' || p_longitude;
        RAISE ex_error;
    END IF;

    -- Checks if the current range is higher than 0.
    -- If not, throws an exception.
    IF p_current_range < 0 THEN
        lv_error_txt := 'Invalid range: ' || p_current_range;
        RAISE ex_error;
    END IF;

    -- At kapasiteten på sykkelen ikke kan være mindre enn 0, ellers gis det feil melding.
    -- Checks if the capacity of the bicycle cant be less than 0
    IF p_capacity < 0 THEN
        lv_error_txt := 'Invalid bicycle rider capacity: ' || p_capacity;
        RAISE ex_error;
    END IF;

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

    VALUES (
    (SELECT MAX(BC_BICYCLE.BICYCLE_ID) + 1 FROM BC_BICYCLE),
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

    COMMIT;

    -- Error kode
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

END CREATE_BICYCLE_PP;

procedure ADD_DOCK_PP (
    p_station_id            IN VARCHAR,         -- Must not be NULL.  Must match a station in BC_STATION table.
    p_dock_id               IN INTEGER ,        -- Must not be NULL.  Small integer (1,2,3,...)
    p_dock_status           IN VARCHAR,         -- Must not be NULL.  Value must match check constraint.
    p_bicycle_id            IN INTEGER          -- May be NULL. Any value must match existing value in BC_BICYCLE.
    )

 IS

    ex_error                   EXCEPTION;
    check_constraint_violated  EXCEPTION;
    PRAGMA EXCEPTION_INIT(check_constraint_violated, -2290);

    lv_error_txt           VARCHAR(200);
    lv_dock_counter        INTEGER;
    lv_station_counter     INTEGER;
    lv_bicycle_counter     INTEGER;

BEGIN

    -- Checks if something is written in the p_station_id parameter
    -- If not, throws an exception.
    IF p_station_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (STATION_ID) in ADD_DOCK_PP. No dock added';
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_dock_id parameter
    -- If not, throws an exception.
    IF p_dock_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (DOCK_ID) in ADD_DOCK_PP. No dock added';
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_dock_status parameter
    -- If not, throws an exception.
    IF p_dock_status IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (DOCK_STATUS) in ADD_DOCK_PP. No dock added';
        RAISE ex_error;
    END IF;


    -- Checks if the given dock id already exists
    -- If it does, throws an exception.
    SELECT COUNT(*)
    INTO lv_dock_counter
    FROM BC_DOCK
    WHERE BC_DOCK.DOCK_ID = p_dock_id;

    IF lv_dock_counter > 0 THEN
    lv_error_txt := 'Dock number: ' || p_dock_id || ' already exists.';
    RAISE ex_error;
    END IF;

    -- Checks if the given station id exists
    -- If not, throws an exception.
    SELECT COUNT(*)
    INTO lv_station_counter
    FROM BC_DOCK
    WHERE BC_DOCK.STATION_ID = p_station_id;

    IF lv_station_counter <= 0 THEN
    lv_error_txt := 'Invalid station identifier: ' || p_station_id;
    RAISE ex_error;
    END IF;

    -- Checks if the given bicycle id exists
    -- If not, throws an exception.
    SELECT COUNT(*)
    INTO lv_bicycle_counter
    FROM BC_DOCK
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;

    IF lv_bicycle_counter <= 0 THEN
    lv_error_txt := 'Invalid bicycle identifier: ' || p_bicycle_id;
    RAISE ex_error;
    END IF;


    -- Checks if the given dock id is higher than 0
    -- If not, throws an exception.
    IF p_dock_id < 0 THEN
    lv_error_txt := 'Invalid dock number: ' || p_dock_id;
    RAISE ex_error;
    END IF;


    -- Inserts the values in the BC_DOCK table.
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

    COMMIT;

    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN CHECK_CONSTRAINT_VIOLATED THEN
    DBMS_OUTPUT.PUT_LINE('Invalid dock status.');
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('The error code is:  ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('The error msg is: ' || SQLERRM);
    ROLLBACK;

END ADD_DOCK_PP;

procedure BEGIN_TRIP_PP (
    p_trip_id               OUT INTEGER,        -- an output parameter
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match value value in BC_BICYCLE and BC_DOCK tables.
    p_start_time            IN DATE,            -- If NULL, use CURRENT_DATE system date value
    p_membership_id         IN INTEGER          -- Must not be NULL.  Must match value in BC_MEMBERSHIP table.
    )
IS

    ex_capacity_exceeded        EXCEPTION;
    ex_error                    EXCEPTION;

    lv_error_txt                VARCHAR2(200);
    lv_bicycle_counter          INTEGER;
    lv_membership_counter       INTEGER;
    lv_bicycle_docked           INTEGER;
    lv_start_station            VARCHAR2(200);
    lv_vehicles_available       INTEGER;
    lv_docks_available          INTEGER;

    lv_memberpass_start         DATE;
    lv_memberpass_end           DATE;
    lv_final_date               DATE;


BEGIN
    -- Checks if something is written in the p_bicycle_id parameter
    IF p_bicycle_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (Bicycle_ID) in BEGIN_TRIP_PP.  No trip added.';
        RAISE ex_error;
    END IF;

     -- Checks if something is written in the p_membership_id parameter
    IF p_membership_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (Membership_ID) in BEGIN_TRIP_PP.  No trip added.';
        RAISE ex_error;
    END IF;

    -- Checks if a date is written in the p_start_time parameter
    IF p_start_time IS NULL THEN
        lv_final_date := CURRENT_DATE;
    ELSE
        lv_final_date := p_start_time;
    END IF;


    -- Checks if the value written in the p_bicycle_id parameter is in the BC_Bicycle table.
    -- If not, throws an exception.
    SELECT COUNT(*)
    INTO lv_bicycle_counter
    FROM BC_BICYCLE
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;

    IF lv_bicycle_counter <= 0 THEN
        lv_error_txt := 'Invalid bicycle identifier: ' || p_bicycle_id;
        RAISE ex_error;
    END IF;

    -- Checks if the value written in the p_bicycle_id parameter is in the BC_DOCK table.
    -- If not, throws an exception.
    SELECT COUNT(*)
    INTO lv_bicycle_docked
    FROM BC_DOCK
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;

    IF lv_bicycle_docked <= 0 THEN
        lv_error_txt := 'Bicycle: ' || p_bicycle_id || ' is not currently docked.';
        RAISE ex_error;
    END IF;

    -- Checks if the value written in the p_membership_id parameter is in the BC_Membership table.
    -- If not, throws an exception.
    SELECT COUNT(*)
    INTO lv_membership_counter
    FROM BC_MEMBERSHIP
    WHERE BC_MEMBERSHIP.MEMBERSHIP_ID = p_membership_id;

    IF lv_membership_counter <= 0 THEN
        lv_error_txt := 'Invalid Membership: ' || p_membership_id;
        RAISE ex_error;
    END IF;

    -- Checks if the membership is valid on the day the user is going to rent the bike.
    -- If not, throws an exception.
    IF lv_memberpass_start > p_start_time OR lv_memberpass_end < p_start_time THEN
        lv_error_txt := 'Invalid Membership: ' || p_membership_id;
        RAISE ex_error;
    END IF;


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

    -- Assigns the given bicycle id's start station into the variable lv_start_station
    SELECT STATION_ID
    INTO lv_start_station
    FROM BC_DOCK
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;

    -- Assigns the value of the total bikes available into a variable called lv_vehicles_available.
    SELECT STATION_VEHICLES_AVAILABLE
    INTO lv_vehicles_available
    FROM BC_STATION
    WHERE BC_STATION.STATION_ID = lv_start_station;

    -- Assigns the value of the total docks available into a variable called lv_docks_available.
    SELECT STATION_DOCKS_AVAILABLE
    INTO lv_docks_available
    FROM BC_STATION
    WHERE BC_STATION.STATION_ID = lv_start_station;

    -- Updates the status of the bicycle to 'in use' with the bicycle given in the parameter p_bicycle_id.
    UPDATE BC_BICYCLE_STATUS
    SET BICYCLE_STATUS = 'in use'
    WHERE BC_BICYCLE_STATUS.BICYCLE_ID = p_bicycle_id;

    -- Updates the BC_Dock table's columns: status and bicycle ID to make the dock available.
    UPDATE BC_DOCK
    SET DOCK_STATUS = 'unoccupied', BICYCLE_ID = null
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;

    -- Updates BC_Station table's columns so that its one less available bike on the station the bicycle has been rented from and one more available dock on the station the bicycle has been rented from.
    UPDATE BC_STATION
    SET STATION_VEHICLES_AVAILABLE = STATION_VEHICLES_AVAILABLE - 1,
        STATION_DOCKS_AVAILABLE = BC_STATION.STATION_DOCKS_AVAILABLE + 1
    WHERE STATION_ID = lv_start_station;


    -- Checks if the station has vehicles available.
    -- If it does have vehicles available it updates the station to renting.
    -- If it does not have vehicles available it updates the station to not renting.
    IF lv_vehicles_available > 0 THEN
        UPDATE BC_STATION
        SET STATION_IS_RENTING = 1
        WHERE BC_STATION.STATION_ID = lv_start_station;

        UPDATE BC_STATION
        SET STATION_LAST_REPORTED = lv_final_date
        WHERE BC_STATION.STATION_ID = lv_start_station;
    ELSE
        UPDATE BC_STATION
        SET STATION_IS_RENTING = 0
        WHERE BC_STATION.STATION_ID = lv_start_station;

        UPDATE BC_STATION
        SET STATION_LAST_REPORTED = lv_final_date
        WHERE BC_STATION.STATION_ID = lv_start_station;
    end if;


    -- Checks if the station has docks available.
    -- If it does have docks available it updates the station to returning.
    -- If it does not have docks available it updates the station to not returning.
    IF lv_docks_available = 0 THEN
        UPDATE BC_STATION
        SET STATION_IS_RETURNING = 0
        WHERE BC_STATION.STATION_ID = lv_start_station;

        UPDATE BC_STATION
        SET STATION_LAST_REPORTED = lv_final_date
        WHERE BC_STATION.STATION_ID = lv_start_station;
    ELSE
        UPDATE BC_STATION
        SET STATION_IS_RETURNING = 1
        WHERE BC_STATION.STATION_ID = lv_start_station;

        UPDATE BC_STATION
        SET STATION_LAST_REPORTED = lv_final_date
        WHERE BC_STATION.STATION_ID = lv_start_station;
    end if;

    -- Inserts the values to the table BC_TRIP
    INSERT INTO BC_TRIP (
    TRIP_ID,
    BICYCLE_ID,
    START_STATION_ID,
    TRIP_START_TIME,
    MEMBERSHIP_ID
    )

    VALUES (
    (SELECT MAX(TRIP_ID) + 1 FROM BC_TRIP),
    p_bicycle_id,
    lv_start_station,
    lv_final_date,
    p_membership_id
    )
    RETURNING TRIP_ID INTO p_trip_id;

    COMMIT;

    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

END BEGIN_TRIP_PP;

procedure END_TRIP_PP (
    p_trip_id               OUT INTEGER,        -- Return the identifier of the trip completed
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match value value in BC_BICYCLE and BC_DOCK tables.
    p_station_id            IN VARCHAR,         -- The station where the trip ends
    p_dock_id               IN INTEGER,         -- The number of the docking point where the trip ends
    p_end_time              IN DATE,            -- If NULL, use CURRENT_DATE system date value
    p_distance              IN NUMBER,
    p_cost                  IN NUMBER
    )
IS
    ex_error                EXCEPTION;

    lv_error_txt            VARCHAR2(200);
    lv_start_time           DATE;
    lv_dock_status          VARCHAR2(200);
    lv_duration             NUMBER;
    lv_unique_values        INTEGER;
    lv_dock_value           VARCHAR2(200);
    lv_check_endtime        VARCHAR2(200);
    lv_current_trip         INTEGER;
    lv_bicycle_counter      INTEGER;
    lv_dock_recognized      INTEGER;
    lv_final_date           DATE;

BEGIN

    --If p_bicycle_id IS NULL, it prints error text and raises exception
    IF p_bicycle_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_bicycle_id) in END_TRIP_PP';
        RAISE ex_error;
    END IF;

    --If p_station_id IS NULL, it prints error text and raises exception
    IF p_station_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_station_id) in END_TRIP_PP';
        RAISE ex_error;
    END IF;


    -- We do not know the end time on all bicycles, so if end time is null it will select TRIP_ID into lv curent trip
    --and assigns bicycle_id to p_biccyle_id and Trip_start_time to lv_start_time
    IF lv_check_endtime IS NULL THEN
        SELECT TRIP_ID INTO lv_current_trip
        FROM BC_TRIP
        WHERE BICYCLE_ID = p_bicycle_id AND TRIP_START_TIME = lv_start_time;
    END IF;

    --If p_end time is null, it assigns the local variable to CURRENT_DATE else assigns it to p_end_time
    IF p_end_time IS NULL THEN
        lv_final_date := CURRENT_DATE;
    ELSE
        lv_final_date := p_end_time;
    END IF;


    --Selects TRIP_START_TIME into local variable and assigns bicycle_id to p_bicycle_id and Trip_end_time IS NULL.
    SELECT TRIP_START_TIME INTO lv_start_time
    FROM BC_TRIP
    WHERE BC_TRIP.BICYCLE_ID = p_bicycle_id AND BC_TRIP.TRIP_END_TIME IS NULL;



    --First i assigned dock status into lv_dock_Staus and if dock status is occupied or out of service, it will print
    -- a error text and raise an error
    IF lv_dock_status = 'occupied' OR lv_dock_status = 'out of service' THEN
        lv_error_txt := 'Dock not available';
        RAISE ex_error;
    END IF;


    --SELECT COUNT to check if the station_id and dock_id i type in exists or not.
    --Thats why i assigned it to the name lv_dock_recognized.
    SELECT COUNT(*)
    INTO lv_dock_recognized
    FROM BC_DOCK
    WHERE STATION_ID = p_station_id AND DOCK_ID = p_dock_id;


    --IF statement that checks if the dock is recognized. if not, it will print a error text and raise an error.
    IF lv_dock_recognized <= 0 THEN
        lv_error_txt := 'Dock not available.';
        RAISE ex_error;
    END IF;


    -- IF statement that prints a error text and raises an error if the start time is before end time.
    IF lv_start_time > p_end_time THEN
        lv_error_txt := 'Error in return time. End time cannot be earlier than the start time.';
        RAISE ex_error;
    END IF;

    --A SELECT statement where i subtract the end time with start time and gets the result in minutes in order to get
    -- the trip duration
    SELECT (p_end_time - lv_start_time) * 24 * 60 AS TripDuration INTO lv_duration
    FROM BC_TRIP
    WHERE BC_TRIP.BICYCLE_ID = p_bicycle_id AND TRIP_END_TIME IS NULL;


    --Select statement that assigns DOCK_STATUS into local variable.
    SELECT DOCK_STATUS INTO lv_dock_status
    FROM BC_DOCK
    WHERE STATION_ID = p_station_id AND DOCK_ID = p_dock_id;


    --IF dock_Status is unoccupied then it will update BC DOCK table and set Dock status to occupied and assigns
    --BICYCLE_ID to p_bicyle id, STATION_ID to p_station_id and DOCK_ID to p_dock_id.
    --ELSE it prints a error text and raise a eroor.
    IF lv_dock_status = 'unoccupied' THEN
        UPDATE BC_DOCK
        SET DOCK_STATUS = 'occupied', BICYCLE_ID = p_bicycle_id
        WHERE STATION_ID = p_station_id AND DOCK_ID = p_dock_id;
        ELSE
            lv_error_txt := 'You cant dock a bicycle where the dock status is occupied or out of service';
        RAISE ex_error;

        END IF;


    --Updates BC_STATION and sets STATION_VEHICLES_AVAILABLE to STATION_VEHICLES_AVAIBLE + 1 because when i dock a
    --bicycle, it will added a new bicycle which can be used.
    UPDATE BC_STATION
    SET STATION_VEHICLES_AVAILABLE = (SELECT MAX(BC_STATION.STATION_VEHICLES_AVAILABLE) + 1 FROM BC_STATION)
    WHERE STATION_ID = p_station_id;

    --Here i do almost the same but -1 because when a bicycle is removed from a dock and parked somewhere else or in a trip.
    UPDATE BC_STATION
    SET STATION_DOCKS_AVAILABLE = (SELECT MAX(BC_STATION.STATION_DOCKS_AVAILABLE) - 1 FROM BC_STATION)
    WHERE STATION_ID = p_station_id;

    -- Counts the number of bicyles from the BC_BICYCLE table.
    SELECT COUNT(*)
    INTO lv_bicycle_counter
    FROM BC_BICYCLE
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;

    --IF the local variable does not exist in the BC_BICYCLE table, it will print a error text and raise a error.
    IF lv_bicycle_counter <= 0 THEN
        lv_error_txt := 'Invalid bicycle identifier: ' || p_bicycle_id;
        RAISE ex_error;
    END IF;

    -- COUNTS the number of unique values in DOCK STATUS where i assign station_id to p_station_id.
    SELECT COUNT (*) INTO lv_unique_values
    FROM (SELECT DISTINCT DOCK_STATUS FROM BC_DOCK WHERE BC_DOCK.STATION_ID = p_station_id);

    --Here i used a SELECT statment to bring the first row in DOCK STATUS
    SELECT DISTINCT DOCK_STATUS INTO lv_dock_value
    FROM BC_DOCK
    WHERE BC_DOCK.STATION_ID = p_station_id AND ROWNUM = 1;


    --IF unique values is 1 and dock value is occupied or out of service then it is going to update the BC_STATION and
    --SET statiom is returning and station is renting to 0.
    IF lv_unique_values = 1 AND lv_dock_value = 'occupied' OR lv_dock_value = 'out of service' THEN
        UPDATE BC_STATION
        SET STATION_IS_RETURNING = 0,
            STATION_IS_RENTING = 0
        WHERE BC_STATION.STATION_ID = p_station_id;
    END IF;

    -- Updates BC_BICYCLE table and sets BICYCLE_STATUS to available
    UPDATE BC_BICYCLE
    SET BICYCLE_STATUS = 'available'
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;


    --Finds the trip identifier for the current trip using the indicated bicycle
    SELECT TRIP_END_TIME INTO lv_check_endtime FROM BC_TRIP
    WHERE BICYCLE_ID = p_bicycle_id AND TRIP_START_TIME = lv_start_time;


    --Updates BC_TRIP and returns TRIP_ID INTO local variable.
    UPDATE BC_TRIP
    SET TRIP_END_TIME = lv_final_date,
        TRIP_DURATION = lv_duration,
        TRIP_DISTANCE = p_distance,
        TRIP_COST = p_cost,
        END_STATION_ID = p_station_id
    WHERE TRIP_ID = lv_current_trip

    RETURNING TRIP_ID INTO p_trip_id;

    COMMIT;

    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE (lv_error_txt);
    ROLLBACK;

    WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('The end trip does not exist');
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('The error code is:  ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('The error msg is:  ' || SQLERRM);
    ROLLBACK;

END END_TRIP_PP;
/*
    UPDATE_STATION_STATUS_PP.  Update the station status by querying the BC_DOCK
    table to determine how many docks on a this station are available and how
    many bicycles are available.  The flags for whether a station is renting or
    accepting returns are also updated.

    This procedure updates the following columns in the indicated station:
    * station_vehicles_available
    * station_docks_available
    * station_is_renting : if the updated number of vehicles > 0
    * station_is_returning : if the number of docks available > 0
    * station_last_reported : if the parameter is NULL, use CURRENT_DATE value

    PARAMETERS:  Described below

    ERROR MESSAGES:
        Error text:  "Missing mandatory value for station id in UPDATE_STATION_STATUS_PP.  Station status not updated."
        Error meaning:  The p_station_id value is NULL.
        Error effect:  No data are updated in BC_STATION.

        Error text:  "Invalid station id (X) in UPDATE_STATION_STATUS_PP.  Station status not updated."
        Error meaning:  The p_station_id value is not found in the BC_STATION table.  Here, 'X' is the
                        p_station_id value passed into the procedure, which and should be included in the error message.
        Error effect:  No data are updated in BC_STATION.

*/
procedure UPDATE_STATION_STATUS_PP (
    p_station_id            IN VARCHAR,         -- Must not be NULL.
    p_update                IN DATE             -- The update date and time.  If NULL, use CURRENT_DATE
    )

IS

    ex_error                    EXCEPTION;

    lv_error_txt                VARCHAR2(200);
    lv_stationid_counter        INTEGER;
    lv_count_docks_available    INTEGER;
    lv_count_vehicles_available INTEGER;
    lv_final_date               DATE;

BEGIN

    -- Checks if value is written in the p_update parameter
    -- If it is not, assigns the local variable the current date value.
    -- It it is, assigns the local variable with the parameter value.
    IF p_update IS NULL THEN
        lv_final_date := CURRENT_DATE;
    ELSE
        lv_final_date := p_update;
    END IF;

    -- Checks if something is written in the p_station_id parameter
    -- If not, throws an exception.
    IF p_station_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for station id in UPDATE_STATION_STATUS_PP. Station status not updated.';
        RAISE ex_error;
    END IF;


    -- Checks if the value written in the p_bicycle_id parameter is in the BC_Bicycle table.
    -- If not, throws an exception.
    SELECT COUNT(*)
    INTO lv_stationid_counter
    FROM BC_STATION
    WHERE BC_STATION.STATION_ID = p_station_id;

    IF lv_stationid_counter= 0 THEN
        lv_error_txt := 'Invalid station id ' || p_station_id || ' in UPDATE_STATION_STATUS_PP.  Station status not updated.';
        RAISE ex_error;
    END IF;

    -- Counts how many docks are available on the station
    SELECT COUNT(DOCK_STATUS)
    INTO lv_count_docks_available
    FROM BC_DOCK
    WHERE BC_DOCK.STATION_ID = p_station_id AND BC_DOCK.DOCK_STATUS = 'unoccupied';

    -- Counts how many vehicles are available on the station
    SELECT COUNT(BICYCLE_ID)
    INTO lv_count_vehicles_available
    FROM BC_DOCK
    WHERE BC_DOCK.STATION_ID = p_station_id AND BC_DOCK.DOCK_STATUS = 'occupied';


    -- Checks if the station is renting vehicles with the updated values
    IF lv_count_vehicles_available > 0 THEN
        UPDATE BC_STATION
        SET STATION_IS_RENTING = 1
        WHERE BC_STATION.STATION_ID = p_station_id;
    END IF;

    -- Checks if the station is returning vehicles with the updated values
    IF lv_count_docks_available > 0 THEN
        UPDATE BC_STATION
        SET STATION_IS_RETURNING = 1
        WHERE BC_STATION.STATION_ID = p_station_id;
    END IF;


    UPDATE BC_STATION
    SET STATION_DOCKS_AVAILABLE = lv_count_docks_available,
        STATION_VEHICLES_AVAILABLE = lv_count_vehicles_available,
        STATION_LAST_REPORTED = lv_final_date
    WHERE BC_STATION.STATION_ID = p_station_id;


    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

    END UPDATE_STATION_STATUS_PP;

/*
    UPDATE_BICYCLE_STATUS_PP.  Add a new row to the BC_BICYCLE_STATUS table
    reflecting the latitude, longitude, power, range, and status of the bicycle.
    In addition, the procedure updates the BC_BICYCLE table row for the indicated
    bicycle.  It updates the bicycle latitude, longitude, current power, current range,
    status, and status updated values.   In this way, the BC_BICYCLE contains the
    most recent status and location information for the bicycle, while the BC_BICYCLE_STATUS
    table contains the whole history of the bicycle.

   PARAMETERS:  Described below

    ERROR MESSAGES:
    Error text:  "Missing mandatory value for (x) in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated."
    Error meaning:  A mandatory value is missing.  Here x = the name of the parameter whose value is missing.
    Error effect:  No data are updated in BC_STATION.

    Error text:  "Invalid bicycle id (X) in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated."
    Error meaning:  The p_bicycle_id value is not found in the BC_BICYCLE table.  Here, 'X' is the
                    p_bicycle_id value passed into the procedure, which should be included in the error message.
    Error effect:  No data are updated in BC_BICYCLE or BC_BICYCLE_STATUS.

    Error text: "Invalid bicycle status (x)."
    Error meaning:  The value of the bicycle status parameter is not one of the values permitted by the CHECK constraint on
                    bicycle_type.  Here, x = the value of bicycle status passed into the procedure.
    Error effect:  No new status data inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.

    Error text: "Invalid bicycle current power value (x)."
    Error meaning:  The value of the bicycle current power  parameter is not a value between 0 and 100.  Here, x = the value
                    of bicycle current power  passed into the procedure.
    Error effect:  No new bicycle power data inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.

    Error text: "Invalid Latitude (x)."
    Error meaning:  The value of the p_latitude parameter is not within the range of valid latitude values (between -90 and 90).
                   Here, x = the value of p_latitude parameter passed into the procedure.
    Error effect:  No new bicycle location inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.

    Error text:  "Invalid longitude (x)."
    Error meaning:  The value of the p_longitiude parameter is not within the range of valid longitude values (between -180 and 180).
                   Here, x = the value of p_longitude parameter passed into the procedure.
    Error effect:  No new bicycle location inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.



*/
procedure UPDATE_BICYCLE_STATUS_PP (
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match an existing bicycle id in BC_BICYCLE
    p_latitude              IN INTEGER,
    p_longitude             IN INTEGER,
    p_power                 IN INTEGER,         -- Percentage, between 0 and 100
    p_range                 IN INTEGER,         -- remaining range, in meters
    p_status                IN VARCHAR,         -- Must not be NULL.  Permitted values:  'in use', 'available', 'unavailable'
    p_updated               IN DATE             -- If NULL, use CURRENT_DATE value
    )

IS

    lv_error_txt            VARCHAR2(200);
    lv_final_date           DATE;
    lv_bicycleid_counter    NUMBER;

    ex_error                EXCEPTION;

BEGIN

    -- Checks if value is written in the p_updated parameter
    -- If it is not, assigns the local variable the current date value.
    -- It it is, assigns the local variable with the parameter value.
    IF p_updated IS NULL THEN
        lv_final_date := CURRENT_DATE;
    ELSE
        lv_final_date := p_updated;
    END IF;

    -- Checks if value is written in the p_bicycle_id parameter
    -- If not, raises exception.
    IF p_bicycle_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_bicycle_id in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated.';
        RAISE ex_error;
    END IF;

    -- Checks if value is written in the p_status parameter
    -- If not, raises exception.
    IF p_status IS NULL THEN
        lv_error_txt := 'Missing mandatory value for (p_status) in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated.';
        RAISE ex_error;
    END IF;


    -- Checks if value is written in the p_bicycle_id parameter fits the CHECK constraint values
    -- If not, raises exception.
    IF p_status NOT IN ('in use', 'available', 'not available') THEN
        lv_error_txt := 'Invalid bicycle status ' || p_status;
        RAISE ex_error;
    END IF;

    -- Checks if the p_power parameter is between 0 and 100
    -- If not, raises exception.
    IF p_power NOT BETWEEN 0 AND 100 THEN
        lv_error_txt := 'Invalid bicycle current power value ' || p_power;
        RAISE ex_error;
    END IF;

    -- Checks if latitude is between -90 and 90
    -- If not, raises exception.
    IF p_latitude NOT BETWEEN -90 AND 90 THEN
        lv_error_txt := 'Invalid Latitude ' || p_latitude;
        RAISE ex_error;
    END IF;

    -- Checks if latitude is between -180 and 180
    -- If not, raises exception.
    IF p_longitude NOT BETWEEN -180 AND 180 THEN
        lv_error_txt := 'Invalid longitude ' || p_longitude;
        RAISE ex_error;
    END IF;


    -- Checks if the written bicycle_id exists.
    -- If not, raises exception.
    SELECT COUNT(*)
    INTO lv_bicycleid_counter
    FROM BC_BICYCLE
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;

    IF lv_bicycleid_counter <= 0 THEN
        lv_error_txt := 'Invalid bicycle id ' || p_bicycle_id || ' in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated.';
        RAISE ex_error;
    END IF;


    -- Inserts the values in the BC_BICYCLE_STATUS table.
    INSERT INTO BC_BICYCLE_STATUS
    (BICYCLE_ID,
     BICYCLE_STATUS_TIMESTAMP,
     BICYCLE_STATUS_LATITUDE,
     BICYCLE_STATUS_LONGITUDE,
     BICYCLE_STATUS_POWER,
     BICYCLE_STATUS_RANGE,
     BICYCLE_STATUS)

    VALUES
    (p_bicycle_id,
     lv_final_date,
     p_latitude,
     p_longitude,
     p_power,
     p_range,
     p_status);


    -- Updates the BC_BICYCLE table for the given bicycle id.
    UPDATE BC_BICYCLE
    SET BICYCLE_LATITUDE = p_latitude,
        BICYCLE_LONGITUDE = p_longitude,
        BICYCLE_CURRENT_POWER = p_power,
        BICYCLE_CURRENT_RANGE = p_range,
        BICYCLE_STATUS = p_status,
        BICYCLE_STATUS_UPDATED = lv_final_date
    WHERE BICYCLE_ID = p_bicycle_id;

    COMMIT;

    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

    END UPDATE_BICYCLE_STATUS_PP;


/*
    UPDATE_BICYCLE_STATUS_PP.  Add a new row to the BC_BICYCLE_STATUS table
    reflecting the latitude, longitude, and status of the bicycle (but not power and range).
    In addition, the procedure updates the BC_BICYCLE table row for the indicated
    bicycle.  It updates the bicycle latitude, longitude, status, and status updated
    values.   In this way, the BC_BICYCLE contains the most recent status and
    location information for the bicycle, while the BC_BICYCLE_STATUS
    table contains the whole history of the bicycle.

    PARAMETERS:  Described below

    ERROR MESSAGES:
    Error text:  "Missing mandatory value for (x) in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated."
    Error meaning:  A mandatory value is missing.  Here x = the name of the parameter whose value is missing.
    Error effect:  No data are updated in BC_STATION.

    Error text:  "Invalid bicycle id (X) in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated."
    Error meaning:  The p_bicycle_id value is not found in the BC_BICYCLE table.  Here, 'X' is the
                    p_bicycle_id value passed into the procedure, which should be included in the error message.
    Error effect:  No data are updated in BC_BICYCLE or BC_BICYCLE_STATUS.

    Error text: "Invalid bicycle status (x)."
    Error meaning:  The value of the bicycle status parameter is not one of the values permitted by the CHECK constraint on
                    bicycle_type.  Here, x = the value of bicycle status passed into the procedure.
    Error effect:  No new status data inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.

    Error text: "Invalid Latitude (x)."
    Error meaning:  The value of the p_latitude parameter is not within the range of valid latitude values (between -90 and 90).
                   Here, x = the value of p_latitude parameter passed into the procedure.
    Error effect:  No new bicycle location inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.

    Error text:  "Invalid longitude (x)."
    Error meaning:  The value of the p_longitiude parameter is not within the range of valid longitude values (between -180 and 180).
                   Here, x = the value of p_longitude parameter passed into the procedure.
    Error effect:  No new bicycle location inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.
*/
procedure UPDATE_BICYCLE_STATUS_PP (
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match an existing bicycle id in BC_BICYCLE
    p_latitude              IN INTEGER,
    p_longitude             IN INTEGER,
    p_status                IN VARCHAR,         -- Must not be NULL.  Permitted values:  'in use', 'available', 'unavailable'
    p_updated               IN DATE             -- If NULL, use CURRENT_DATE value
    )

IS

    lv_error_txt            VARCHAR2(200);
    lv_final_date           DATE;
    lv_bicycle_counter      NUMBER;

    ex_error                EXCEPTION;

BEGIN

    -- Checks if value is written in the p_updated parameter
    -- If it is not, assigns the local variable the current date value.
    -- It it is, assigns the local variable with the parameter value.
    IF p_updated IS NULL THEN
        lv_final_date := CURRENT_DATE;
    ELSE
        lv_final_date := p_updated;
    END IF;

    -- Checks if value is written in the p_bicycle_id parameter
    -- If not, raises exception.
    IF p_bicycle_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_bicycle_id in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated.';
        RAISE ex_error;
    END IF;

    -- Checks if value is written in the p_status parameter
    -- If not, raises exception.
    IF p_status IS NULL THEN
        lv_error_txt := 'Missing mandatory value for (p_status) in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated.';
        RAISE ex_error;
    END IF;


    -- Checks if value is written in the p_bicycle_id parameter fits the CHECK constraint values
    -- If not, raises exception.
    IF p_status NOT IN ('in use', 'available', 'not available') THEN
        lv_error_txt := 'Invalid bicycle status ' || p_status;
        RAISE ex_error;
    END IF;


    -- Checks if latitude is between -90 and 90
    -- If not, raises exception.
    IF p_latitude NOT BETWEEN -90 AND 90 THEN
        lv_error_txt := 'Invalid Latitude ' || p_latitude;
        RAISE ex_error;
    END IF;

    -- Checks if latitude is between -180 and 180
    -- If not, raises exception.
    IF p_longitude NOT BETWEEN -180 AND 180 THEN
        lv_error_txt := 'Invalid longitude ' || p_longitude;
        RAISE ex_error;
    END IF;


    -- Checks if the written bicycle_id exists.
    -- If not, raises exception.
    SELECT COUNT(*)
    INTO lv_bicycle_counter
    FROM BC_BICYCLE
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;

    IF lv_bicycle_counter <= 0 THEN
        lv_error_txt := 'Invalid bicycle id ' || p_bicycle_id || ' in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated.';
        RAISE ex_error;
    END IF;


    -- Inserts the values in the BC_BICYCLE_STATUS table.
    INSERT INTO BC_BICYCLE_STATUS
    (BICYCLE_ID,
     BICYCLE_STATUS_TIMESTAMP,
     BICYCLE_STATUS_LATITUDE,
     BICYCLE_STATUS_LONGITUDE,
     BICYCLE_STATUS)
    VALUES
    (p_bicycle_id,
     lv_final_date,
     p_latitude,
     p_longitude,
     p_status);


    -- Updates the BC_BICYCLE table for the given bicycle id.
    UPDATE BC_BICYCLE
    SET BICYCLE_LATITUDE = p_latitude,
        BICYCLE_LONGITUDE = p_longitude,
        BICYCLE_STATUS = p_status,
        BICYCLE_STATUS_UPDATED = lv_final_date
    WHERE BICYCLE_ID = p_bicycle_id;

    COMMIT;

    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

    END UPDATE_BICYCLE_STATUS_PP;

/*
    NUMBER_OF_BICYCLES_PF.  This function takes as input parameters a station
    identifier and a type of bicycle (�electric�, �cargo�, �classic�, �smart�)
    and returns the number of bicycles of this type docked at this station.
    The procedure should function correctly regardless of the case of the input parameter.
    p_bicycle_type values of ('electric', 'ELECTRIC', 'Electric') should all produce
    the same result.  It is not a requirement that this function check to see whether a valid
    bicycle type has been passed in.  In such cases, the function will return a value
    of zero (0).

    Error text:  "Missing mandatory value for (x) in NUMBER_OF_BICYCLES_PF."
    Error meaning:  A mandatory value is missing.  Here x = the name of the parameter whose value is missing.
    Error effect:  The function returns a NULL value.
*/
function NUMBER_OF_BICYCLES_PF (
    p_station_id            IN VARCHAR,         -- Must not be NULL.
    p_bicycle_type          IN VARCHAR          -- Must not be NULL.
    ) RETURN INTEGER
    IS

    lv_stationid_counter    VARCHAR2(200);
    lv_error_txt            VARCHAR2(200);
    lv_total_amount         INTEGER;

    ex_error                EXCEPTION;

BEGIN

    -- Checks if value is written in the p_station_id parameter
    -- If not, raises exception.
    IF p_station_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_station_id in NUMBER_OF_BICYCLES_PF.';
        RAISE ex_error;
    END IF;

    -- Checks if value is written in the p_bicycle_type parameter
    -- If not, raises exception.
    IF p_bicycle_type IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_bicycle_type in NUMBER_OF_BICYCLES_PF';
        RAISE ex_error;
    END IF;


    -- Checks if the station_id written exists in the BC_STATION table.
    -- If not, raises exception.
    SELECT COUNT(*)
    INTO lv_stationid_counter
    FROM BC_STATION
    WHERE BC_STATION.STATION_ID = p_station_id;

    IF lv_stationid_counter <= 0 THEN
        lv_error_txt := 'Invalid station id ' || p_station_id || ' in UPDATE_STATION_STATUS_PP.  Station status not updated.';
        RAISE ex_error;
    END IF;

    -- Queries the BC_BICYCLE and BC_DOCK table to query the total amount of bicycle for the given type.
    -- And returns the total amount.
    SELECT COUNT(BICYCLE_TYPE)
    INTO lv_total_amount
    FROM BC_BICYCLE
        JOIN BC_DOCK ON BC_BICYCLE.BICYCLE_ID = BC_DOCK.BICYCLE_ID
    WHERE BC_DOCK.STATION_ID = p_station_id
        AND REGEXP_LIKE(p_bicycle_type, 'i');

    RETURN lv_total_amount;


EXCEPTION
    WHEN ex_error THEN
        DBMS_OUTPUT.PUT_LINE(lv_error_txt);
        ROLLBACK;
        RETURN 0;

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
        DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
        ROLLBACK;
        RETURN 0;

END NUMBER_OF_BICYCLES_PF;




/*  REMOVE_BICYCLE_PP.  This procedure takes a bicycle out of service, removing
    it from its dock and setting its status to �unavailable�.  This procedure also
    calls the UPDATE_BICYCLE_STATUS_PP procedure with NULL values for the latitude and
    longitude and a status value of 'unavailable'.  In this way the bicycle status
    log reflects the fact that the bicycle has been taken out of service.  In short,
    this procedure:
    a) updates the row in the BC_BICYCLE table for this bicycle to set the status to 'unavailable'
       and the bicycle_status_updated to the date indicated.
    b) updates the row in BC_DOCK for this bicycle, setting the bicycle_id value to NULL and
       the dock_status to 'available'
    c) inserts a new row in BC_BICYCLE_STATUS with the bicycle status = 'unavailable'
       and the status timestamp set to the date passed into the procedure.  Longitude,
       latitude, power, and range are to be NULL.
*/
procedure REMOVE_BICYCLE_PP (
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.
    p_update                IN DATE             -- If NULL, use CURRENT_DATE
    )
    IS

    lv_error_txt            VARCHAR2(200);
    lv_final_date           DATE;

    ex_error                EXCEPTION;

    BEGIN

        IF p_bicycle_id IS NULL THEN
            lv_error_txt := '-------------------------------';
            RAISE ex_error;
        end if;

        IF p_update IS NULL THEN
            lv_final_date := CURRENT_DATE;
        ELSE
            lv_final_date := p_update;
        end if;

        UPDATE BC_BICYCLE
        SET BICYCLE_STATUS = 'not available',
            BICYCLE_STATUS_UPDATED = lv_final_date
        WHERE BICYCLE_ID = p_bicycle_id;

        UPDATE BC_DOCK
        SET BICYCLE_ID = NULL,
            DOCK_STATUS = 'unoccupied'
        WHERE BICYCLE_ID = p_bicycle_id;

        UPDATE_BICYCLE_STATUS_PP(p_bicycle_id, NULL, NULL, NULL, NULL, 'not available', p_update);

        INSERT INTO BC_BICYCLE_STATUS
        (BICYCLE_ID, BICYCLE_STATUS_TIMESTAMP, BICYCLE_STATUS_LATITUDE, BICYCLE_STATUS_LONGITUDE, BICYCLE_STATUS_POWER, BICYCLE_STATUS_RANGE, BICYCLE_STATUS)

        VALUES
        (p_bicycle_id, lv_final_date, NULL, NULL, NULL, NULL, 'not available');


    COMMIT;

    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

    END REMOVE_BICYCLE_PP;

/*
LIST_AVAILABLE_BICYCLES_PP.  This procedure prints out a list of the bicycles
that are available at a given station, together with each bicycle�s type.  The
procedure should print (DBMS_OUTPUT.PUT_LINE) each bicycle's id and type.  If
no bicycles are available in the station, the procedure should print "No bicycles available."

    ERROR MESSAGES:
        Error text:  "Missing mandatory value for station id in LIST_AVAILABLE_BICYCLES_PP."
        Error meaning:  The p_station_id value is NULL.

        Error text:  "Invalid station id (X) in LIST_AVAILABLE_BICYCLES_PP."
        Error meaning:  The p_station_id value is not found in the BC_STATION table.  Here, 'X' is the
                        p_station_id value passed into the procedure, which and should be included in the error message.
*/
procedure LIST_AVAILABLE_BICYCLES_PP (
    p_station_id            IN VARCHAR          -- Must not be NULL.
    )

IS

    lv_error_txt            VARCHAR2(200);
    lv_stationid_counter    NUMBER;
    lv_amount_available     NUMBER;
    lv_bicycles_available   VARCHAR2(200);

    ex_error                EXCEPTION;

BEGIN

    -- Checks if value is written in the p_station_id parameter
    -- If not, raises exception.
    IF p_station_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_station_id in LIST_AVAILABLE_BICYCLES_PP.';
        RAISE ex_error;
    END IF;


    -- Checks if the station_id written exists in the BC_STATION table.
    -- If not, raises exception.
    SELECT COUNT(*)
    INTO lv_stationid_counter
    FROM BC_STATION
    WHERE BC_STATION.STATION_ID = p_station_id;

    IF lv_stationid_counter <= 0 THEN
        lv_error_txt := 'Invalid station id ' || p_station_id || ' in LIST_AVAILABLE_BICYCLES_PP.';
        RAISE ex_error;
    END IF;

    -- Counts the amount of bicycles available.
    -- If there are no bicycles available, raises exception.
    SELECT COUNT(BICYCLE_ID)
    INTO lv_amount_available
    FROM BC_DOCK
    WHERE STATION_ID = p_station_id AND DOCK_STATUS = 'occupied';

    IF lv_amount_available <= 0 THEN
        lv_error_txt := 'No bicycles available.';
        RAISE ex_error;
    END IF;


    -- Prints out the bicycles that are available in a loop.
    FOR BICYCLE IN (
    SELECT BICYCLE_ID
    INTO lv_bicycles_available
    FROM BC_DOCK
    WHERE STATION_ID = p_station_id AND DOCK_STATUS = 'occupied'
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('Station ID: ' || p_station_id || ' has bicycle ID: ' || BICYCLE.BICYCLE_ID || ' available.');
    end loop;

    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

END LIST_AVAILABLE_BICYCLES_PP;

procedure BICYCLE_SUMMARY_PP (
    p_start_date                       IN DATE,            -- If NULL, use all dates before end date
    p_end_date                         IN DATE,            -- If NULL, use all dates after start date
    p_program_id                       IN VARCHAR          -- Must not be NULL.  Must match existing program.
    )

IS

    lv_error_txt                       VARCHAR(200);
    lv_match_program_id_in_program     VARCHAR(200);
    lv_match_program_id_in_station     VARCHAR(200);
    lv_inverted_start                  DATE;
    lv_inverted_end                    DATE;

    ex_error                           EXCEPTION;

BEGIN

    -- Checks if value is written in the p_program_id parameter
    -- If not, raises exception.
    IF p_program_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_program_id in BICYCLE_SUMMARY_PP.';
        RAISE ex_error;
    END IF;

    -- Checks if value is written in the p_start_date and p_end_date parameters
    -- If not, raises exception.
   IF p_start_date IS NULL AND p_end_date IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_start_date and p_end_date in BICYCLE_SUMMARY_PP.';
        RAISE ex_error;
   END IF;


    -- Checks if the program id written exists in the BC_PROGRAM table.
    -- If not, raises exception.
    SELECT COUNT(*)
    INTO lv_match_program_id_in_program
    FROM BC_PROGRAM
    WHERE BC_PROGRAM.PROGRAM_ID = p_program_id;

    IF lv_match_program_id_in_program <= 0 THEN
        lv_error_txt := 'Invalid program id ' || p_program_id || ' in BICYCLE_SUMMARY_PP.';
        RAISE ex_error;
    END IF;

    -- Checks if the program id written exists in the BC_STATION table.
    -- If not, raises exception.
    SELECT COUNT(*)
    INTO lv_match_program_id_in_station
    FROM BC_STATION
    WHERE BC_STATION.PROGRAM_ID = p_program_id;

    IF lv_match_program_id_in_station <= 0 THEN
        lv_error_txt := 'Invalid program id ' || p_program_id || '. The program id written is not found in the station table in BICYCLE_SUMMARY_PP.';
        RAISE ex_error;
    END IF;


    -- This is the version that runs if everything is right and correct.
    -- This one selects three columns:
    -- 1. Shows bicycle ID.
    -- 2. Counts total trips for the bicycle.
    -- 3. Sums all the distances from the trips for the bicycle.
    IF p_end_date > p_start_date THEN
        FOR trips IN (
            SELECT BICYCLE_ID, COUNT(BICYCLE_ID) AS "number_of_trips", SUM(TRIP_DISTANCE) AS "total_distance"
            FROM BC_TRIP
            WHERE TRIP_START_TIME BETWEEN p_start_date AND p_end_date
            GROUP BY BICYCLE_ID
            ORDER BY BICYCLE_ID
        )

        -- Prints summary for each bicycle for the given dates.
        LOOP
            DBMS_OUTPUT.PUT_LINE('Bicycle ID: ' || trips.BICYCLE_ID || ' --- Trips: ' || trips."number_of_trips" || ' --- Total distance: ' || trips."total_distance");
        end loop;
    END IF;

    -- Reverts the p_start_date and p_end_date so it runs anyway.
    IF p_start_date > p_end_date THEN

        lv_inverted_end := p_start_date;
        lv_inverted_start := p_end_date;

        FOR trips IN (
            SELECT BICYCLE_ID, COUNT(BICYCLE_ID) AS "number_of_trips", SUM(TRIP_DISTANCE) AS "total_distance"
            FROM BC_TRIP
            WHERE TRIP_START_TIME BETWEEN lv_inverted_start AND lv_inverted_end -- Reverts here with the given local variables.
            GROUP BY BICYCLE_ID
            ORDER BY BICYCLE_ID
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('Bicycle ID: ' || trips.BICYCLE_ID || ' --- Trips: ' || trips."number_of_trips" || ' --- Total distance: ' || trips."total_distance");
        end loop;
    END IF;

    -- Shows the bicycle summary for all the dates before end date
    IF p_start_date IS NULL THEN
        FOR trips IN (
            SELECT BICYCLE_ID, COUNT(BICYCLE_ID) AS "number_of_trips", SUM(TRIP_DISTANCE) AS "total_distance"
            FROM BC_TRIP
            WHERE TRIP_START_TIME < p_end_date -- Dates before end date
            GROUP BY BICYCLE_ID
            ORDER BY BICYCLE_ID
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('Bicycle ID: ' || trips.BICYCLE_ID || ' --- Trips: ' || trips."number_of_trips" || ' --- Total distance: ' || trips."total_distance");
        end loop;
    END IF;

    -- Shows the bicycle summary for all the dates after start date
    IF p_end_date IS NULL THEN
        FOR trips IN (
            SELECT BICYCLE_ID, COUNT(BICYCLE_ID) AS "number_of_trips", SUM(TRIP_DISTANCE) AS "total_distance"
            FROM BC_TRIP
            WHERE BC_TRIP.TRIP_END_TIME > p_start_date -- Dates after start date.
            GROUP BY BICYCLE_ID
            ORDER BY BICYCLE_ID
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('Bicycle ID: ' || trips.BICYCLE_ID || ' --- Trips: ' || trips."number_of_trips" || ' --- Total distance: ' || trips."total_distance");
        end loop;
    END IF;


    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

    END BICYCLE_SUMMARY_PP;


    END bcycle3b_pkg;