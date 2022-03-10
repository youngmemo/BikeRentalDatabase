procedure REMOVE_BICYCLE_PP (
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.
    p_update                IN DATE             -- If NULL, use CURRENT_DATE
    )
    IS

    lv_error_txt            VARCHAR2(200);
    lv_final_date           DATE;

    ex_error                EXCEPTION;

    BEGIN

        IF p_bicycle_id IS NULL THEN
            lv_error_txt := '-------------------------------';
            RAISE ex_error;
        end if;

        IF p_update IS NULL THEN
            lv_final_date := CURRENT_DATE;
        ELSE
            lv_final_date := p_update;
        end if;

        UPDATE BC_BICYCLE
        SET BICYCLE_STATUS = 'not available',
            BICYCLE_STATUS_UPDATED = lv_final_date
        WHERE BICYCLE_ID = p_bicycle_id;

        UPDATE BC_DOCK
        SET BICYCLE_ID = NULL,
            DOCK_STATUS = 'unoccupied'
        WHERE BICYCLE_ID = p_bicycle_id;

        UPDATE_BICYCLE_STATUS_PP(p_bicycle_id, NULL, NULL, NULL, NULL, 'not available', p_update);

        INSERT INTO BC_BICYCLE_STATUS
        (BICYCLE_ID, BICYCLE_STATUS_TIMESTAMP, BICYCLE_STATUS_LATITUDE, BICYCLE_STATUS_LONGITUDE, BICYCLE_STATUS_POWER, BICYCLE_STATUS_RANGE, BICYCLE_STATUS)

        VALUES
        (p_bicycle_id, lv_final_date, NULL, NULL, NULL, NULL, 'not available');


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

    END REMOVE_BICYCLE_PP;