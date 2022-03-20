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