procedure ADD_DOCK_PP (
    p_station_id            IN VARCHAR,         -- Must not be NULL.  Must match a station in BC_STATION table.
    p_dock_id               IN SMALLINT,        -- Must not be NULL.  Small integer (1,2,3,...)
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
        lv_error_txt := 'Missing mandatory value for parameter (STATION_ID) in ADD_DOCK_SP. No dock added';
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_dock_id parameter
    -- If not, throws an exception.
    IF p_dock_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (DOCK_ID) in ADD_DOCK_SP. No dock added';
        RAISE ex_error;
    END IF;

    -- Checks if something is written in the p_dock_status parameter
    -- If not, throws an exception.
    IF p_dock_status IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (DOCK_STATUS) in ADD_DOCK_SP. No dock added';
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