procedure UPDATE_STATION_STATUS_PP (
    p_station_id            IN VARCHAR,         -- Must not be NULL.
    p_update                IN DATE             -- The update date and time.  If NULL, use CURRENT_DATE
    )
    IS

    ex_error                    EXCEPTION;

    lv_error_txt                VARCHAR2(200);
    lv_match_stationid          INTEGER;
    lv_count_docks_available    INTEGER;
    lv_count_vehicles_available INTEGER;

    BEGIN

        -- Checks if something is written in the p_station_id parameter
        IF p_station_id IS NULL THEN
            lv_error_txt := 'Missing mandatory value for station id in UPDATE_STATION_STATUS_PP. Station status not updated.';
            RAISE ex_error;
        end if;

        -- Checks if the value written in the p_bicycle_id parameter is in the BC_Bicycle table.
        -- If not, throws an exception.
        SELECT COUNT(*)
        INTO lv_match_stationid
        FROM BC_STATION
        WHERE BC_STATION.STATION_ID = p_station_id;

        IF lv_match_stationid <= 0 THEN
            lv_error_txt := 'Invalid station id ' || p_station_id || ' in UPDATE_STATION_STATUS_PP.  Station status not updated.';
            RAISE ex_error;
        end if;

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
        end if;

        -- Checks if the station is returning vehicles with the updated values
        IF lv_count_docks_available > 0 THEN
            UPDATE BC_STATION
            SET STATION_IS_RETURNING = 1
            WHERE BC_STATION.STATION_ID = p_station_id;
        end if;

        -- Puts current date as a value if the p_update parameter is null
        IF p_update IS NULL THEN
            UPDATE BC_STATION
            SET STATION_DOCKS_AVAILABLE = lv_count_docks_available,
                STATION_VEHICLES_AVAILABLE = lv_count_vehicles_available,
                STATION_LAST_REPORTED = CURRENT_DATE
            WHERE BC_STATION.STATION_ID = p_station_id;

        ELSE
            UPDATE BC_STATION
            SET STATION_DOCKS_AVAILABLE = lv_count_docks_available,
                STATION_VEHICLES_AVAILABLE = lv_count_vehicles_available,
                STATION_LAST_REPORTED = p_update
            WHERE BC_STATION.STATION_ID = p_station_id;
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

    END UPDATE_STATION_STATUS_PP;