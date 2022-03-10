function NUMBER_OF_BICYCLES_PF (
    p_station_id            IN VARCHAR,         -- Must not be NULL.
    p_bicycle_type          IN VARCHAR          -- Must not be NULL.
    ) RETURN INTEGER
    IS

    lv_match_stationid      VARCHAR2(200);
    lv_error_txt            VARCHAR2(200);
    lv_lowercase_type       VARCHAR2(200);
    lv_total_amount         INTEGER;
    
    ex_error                EXCEPTION;

BEGIN

    lv_lowercase_type := LOWER(p_bicycle_type);

    IF p_station_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_station_id in NUMBER_OF_BICYCLES_PF.';
        RAISE ex_error;
    end if;

    IF p_bicycle_type IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_bicycle_type in NUMBER_OF_BICYCLES_PF';
        RAISE ex_error;
    end if;

    SELECT COUNT(*)
    INTO lv_match_stationid
    FROM BC_STATION
    WHERE BC_STATION.STATION_ID = p_station_id;

    IF lv_match_stationid <= 0 THEN
        lv_error_txt := 'Invalid station id ' || p_station_id || ' in UPDATE_STATION_STATUS_PP.  Station status not updated.';
        RAISE ex_error;
    end if;

    SELECT COUNT(BICYCLE_TYPE)
    INTO lv_total_amount
    FROM BC_BICYCLE
        JOIN BC_DOCK ON BC_BICYCLE.BICYCLE_ID = BC_DOCK.BICYCLE_ID
    WHERE BC_DOCK.STATION_ID = p_station_id
      AND BC_BICYCLE.BICYCLE_TYPE = lv_lowercase_type;

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
/

