create procedure BEGIN_TRIP_SP (
    p_trip_id               OUT INTEGER,        -- an output parameter
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match value value in BC_BICYCLE and BC_DOCK tables.
    p_start_time            IN DATE,            -- If NULL, use CURRENT_DATE system date value
    p_membership_id         IN INTEGER          -- Must not be NULL.  Must match value in BC_MEMBERSHIP table.
    )
IS
    ex_missing_value            EXCEPTION;
    ex_invalid_membership       EXCEPTION;
    ex_invalid_bicycleid        EXCEPTION;
    ex_not_docked               EXCEPTION;

    lv_missing_value_txt        VARCHAR2(200);
    lv_invalid_membership_txt   VARCHAR2(200);
    lv_match_bicycle            INTEGER;
    lv_match_membership         INTEGER;
    lv_bicycle_docked           INTEGER;
    lv_start_station            VARCHAR2(200);
    lv_vehicles_available       INTEGER;
    lv_docks_available          INTEGER;

    lv_memberpass_start         DATE;           -- FIX SO IT CHANGES WITH THE DATABASE
    lv_memberpass_end           DATE;           -- FIX SO IT CHANGES WITH THE DATABASE


BEGIN
    -- CHECKS IF BICYCLE ID = NULL
    IF p_bicycle_id IS NULL THEN
        lv_missing_value_txt := 'Missing mandatory value for parameter (Bicycle_ID) in BEGIN_TRIP_SP.  No trip added.';
        RAISE ex_missing_value;
    end if;

     -- CHECKS IF MEMBERSHIP_ID = NULL
    IF p_membership_id IS NULL THEN
        lv_missing_value_txt := 'Missing mandatory value for parameter (Membership_ID) in BEGIN_TRIP_SP.  No trip added.';
        RAISE ex_missing_value;
    end if;

    -- CHECKS IF BICYCLE PARAMETER IS IN THE BICYCLE TABLE
    SELECT COUNT(*)
    INTO lv_match_bicycle
    FROM BC_BICYCLE
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;

    IF lv_match_bicycle <= 0 THEN
        RAISE ex_invalid_bicycleid;
    end if;

    -- NOT CURRENTLY DOCKED BICYCLE
    SELECT COUNT(*)
    INTO lv_bicycle_docked
    FROM BC_DOCK
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;

    IF lv_bicycle_docked <= 0 THEN
        RAISE ex_invalid_bicycleid;
    end if;

    --CHECKS IF MEMBERPASS START TIME IS OKAY
    IF lv_memberpass_start > p_start_time OR lv_memberpass_end < p_start_time THEN
        lv_invalid_membership_txt := 'Invalid Membership: ' || p_membership_id;
        RAISE ex_invalid_bicycleid;
    end if;

    -- CHECKS IF MEMBERSHIP PARAMETER IS IN MEMBERSHIP TABLE
    SELECT COUNT(*)
    INTO lv_match_membership
    FROM BC_MEMBERSHIP
    WHERE BC_MEMBERSHIP.MEMBERSHIP_ID = p_membership_id;

    IF lv_match_membership <= 0 THEN
        lv_invalid_membership_txt := 'Invalid Membership: ' || p_membership_id;
        RAISE ex_invalid_membership;
    end if;

    --SELECTS MEMBERS START TIME INTO LOCAL VARIABLE
    SELECT MEMBER_PASS_START_TIME
    INTO lv_memberpass_start
    FROM BC_MEMBERSHIP
    WHERE BC_MEMBERSHIP.MEMBERSHIP_ID = p_membership_id;

    --SELECTS MEMBERS END TIME INTO LOCAL VARIABLE
    SELECT MEMBER_PASS_END_TIME
    INTO lv_memberpass_end
    FROM BC_MEMBERSHIP
    WHERE BC_MEMBERSHIP.MEMBERSHIP_ID = p_membership_id;

    --UPDATING THE TABLE BICYCLE
    -- Updates the status of the bicycle to 'in use'.
    UPDATE BC_BICYCLE_STATUS
    SET BICYCLE_STATUS = 'in use'
    WHERE BC_BICYCLE_STATUS.BICYCLE_ID = p_bicycle_id;

    -- START STATION
    SELECT STATION_ID
    INTO lv_start_station
    FROM BC_DOCK
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;

    -- UPDATING THE TABLE DOCK XXXXXXXXXXXX
    -- For example, the status of the dock at which the bicycle had been parked will be set to 'available'.
    UPDATE BC_DOCK
    SET DOCK_STATUS = 'Available'
    WHERE BC_DOCK.BICYCLE_ID = p_bicycle_id;


    -- UPDATING THE TABLE BC_STATION XXXXXXXXXXXX
    -- UPDATES SO THAT ITS 1 LESS VEHICLE AVAILABLE BECAUSE A TRIP HAS STARTED
    UPDATE BC_STATION
    SET STATION_VEHICLES_AVAILABLE = STATION_VEHICLES_AVAILABLE - 1
    WHERE STATION_ID = lv_start_station;

    -- UPDATES SO THAT ITS 1 MORE DOCK AVAILABLE BECAUSE A TRIP HAS STARTED
    UPDATE BC_STATION
    SET STATION_DOCKS_AVAILABLE = BC_STATION.STATION_DOCKS_AVAILABLE + 1
    WHERE STATION_ID = lv_start_station;

    -- CHECKS IF THE STATION IS RENTING OR NOT
    SELECT STATION_VEHICLES_AVAILABLE
    INTO lv_vehicles_available
    FROM BC_STATION
    WHERE BC_STATION.STATION_ID = lv_start_station;

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

    --CHECKS IF THE STATION IS RETURNING
    SELECT STATION_DOCKS_AVAILABLE
    INTO lv_docks_available
    FROM BC_STATION
    WHERE BC_STATION.STATION_ID = lv_start_station;

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

    --INSERTER
    -- CHECKS IF START_TIME = NULL AND THEN INSERTS THE PARAMETERS XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    IF p_start_time IS NULL THEN
        INSERT INTO BC_TRIP (
        TRIP_ID,
        BICYCLE_ID,
        TRIP_START_TIME,
        MEMBERSHIP_ID
        )

        VALUES (
        (select max(TRIP_ID) + 1 FROM BC_TRIP),
        p_bicycle_id,
        CURRENT_DATE,
        p_membership_id
        )
        RETURNING TRIP_ID INTO p_trip_id;

    ELSE
        INSERT INTO BC_TRIP (
        TRIP_ID,
        BICYCLE_ID,
        TRIP_START_TIME,
        MEMBERSHIP_ID
        )

        VALUES (
        (select max(TRIP_ID) + 1 FROM BC_TRIP),
        p_bicycle_id,
        p_start_time,
        p_membership_id
        )
        RETURNING TRIP_ID INTO p_trip_id;
    end if;

    UPDATE BC_TRIP
    SET START_STATION_ID = lv_start_station
    WHERE BC_TRIP.TRIP_ID = p_trip_id;

EXCEPTION
    WHEN ex_missing_value THEN
    DBMS_OUTPUT.PUT_LINE(lv_missing_value_txt);
    ROLLBACK;

    WHEN ex_invalid_membership THEN
    DBMS_OUTPUT.PUT_LINE(lv_invalid_membership_txt);
    ROLLBACK;

    WHEN ex_invalid_bicycleid THEN
    DBMS_OUTPUT.PUT_LINE('Invalid bicycle ID: ' || p_bicycle_id);
    ROLLBACK;

    WHEN ex_not_docked THEN
    DBMS_OUTPUT.PUT_LINE('Bicycle: ' || p_bicycle_id || ' is not currently docked.');
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

END BEGIN_TRIP_SP;
/

