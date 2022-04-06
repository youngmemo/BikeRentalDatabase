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