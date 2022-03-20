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
        lv_error_txt := 'Missing mandatory value for parameter (Bicycle_ID) in BEGIN_TRIP_SP.  No trip added.';
        RAISE ex_error;
    END IF;

     -- Checks if something is written in the p_membership_id parameter
    IF p_membership_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (Membership_ID) in BEGIN_TRIP_SP.  No trip added.';
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

    -- Checks if the membership is valid on the day the user is going to rent the bike.
    -- If not, throws an exception.
    IF lv_memberpass_start > p_start_time OR lv_memberpass_end < p_start_time THEN
        lv_error_txt := 'Invalid Membership: ' || p_membership_id;
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

    -- Updates BC_Station table's columns so that its one less available bike on the station the bicycle has been rented from and one more available dock on the station the bicycle has been rented from.
    UPDATE BC_STATION
    SET STATION_VEHICLES_AVAILABLE = STATION_VEHICLES_AVAILABLE - 1,
        STATION_DOCKS_AVAILABLE = BC_STATION.STATION_DOCKS_AVAILABLE + 1
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


    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

    COMMIT;

END BEGIN_TRIP_PP;