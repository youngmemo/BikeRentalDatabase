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
    lv_bicycle_counter     NUMBER;

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
    IF p_status != 'in use' OR p_status != 'available' OR p_status != 'not available' THEN
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