procedure LIST_AVAILABLE_BICYCLES_PP (
    p_station_id            IN VARCHAR          -- Must not be NULL.
    )
    IS

    lv_error_txt            VARCHAR2(200);
    lv_match_stationid      NUMBER;
    lv_amount_available     NUMBER;
    lv_bicycles_available   VARCHAR2(200);

    ex_error                EXCEPTION;

    BEGIN

        IF p_station_id IS NULL THEN
            lv_error_txt := 'Missing mandatory value for p_station_id in LIST_AVAILABLE_BICYCLES_PP.';
            RAISE ex_error;
        end if;

        IF lv_amount_available <= 0 THEN
            DBMS_OUTPUT.PUT_LINE('No bicycles available.');
        end if;

        SELECT COUNT(*)
        INTO lv_match_stationid
        FROM BC_STATION
        WHERE BC_STATION.STATION_ID = p_station_id;

        IF lv_match_stationid <= 0 THEN
            lv_error_txt := 'Invalid station id ' || p_station_id || ' in LIST_AVAILABLE_BICYCLES_PP.';
            RAISE ex_error;
        end if;

        SELECT COUNT(BICYCLE_ID)
        INTO lv_amount_available
        FROM BC_DOCK
        WHERE STATION_ID = p_station_id AND DOCK_STATUS = 'occupied';

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