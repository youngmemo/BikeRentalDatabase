create or replace package BODY bcycle3a_pkg 
IS
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
(select max(BC_ACCOUNT.ACCOUNT_ID) + 1 FROM BC_ACCOUNT),
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

 /*
 EXCEPTION
 */


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
    
    END CREATE_ACCOUNT_PP;
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
    END CREATE_STATION_PP;
end bcycle3a_pkg;