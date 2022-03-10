
procedure REMOVE_BICYCLE_PP (
  p_bicycle_id            IN INTEGER,         -- Must not be NULL.
  p_update                IN DATE             -- If NULL, use CURRENT_DATE
                            )
                            IS
  ex_error                EXCEPTION;
  lv_error_text           VARCHAR2 (200);
  lv_current_power        INTEGER;
    lv_current_range      INTEGER;
BEGIN
    SELECT BICYCLE_CURRENT_POWER INTO lv_current_power
    FROM BC_BICYCLE
    WHERE BICYCLE_ID = p_bicycle_id;

    SELECT BICYCLE_CURRENT_RANGE INTO lv_current_range
    FROM BC_BICYCLE
    WHERE BICYCLE_ID = p_bicycle_id;

    IF p_bicycle_id IS NULL THEN
        lv_error_text := 'Missing mandatory for parameter (Bicycle_ID) in REMOVE_BICYCLE_PP. No bicycle removed.';
        RAISE ex_error;
    end if;
-- a)
    UPDATE BC_BICYCLE
    SET BICYCLE_STATUS = 'not available',  BICYCLE_STATUS_UPDATED = p_update

    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;


-- b)
    UPDATE BC_DOCK
    SET BICYCLE_ID = NULL, DOCK_STATUS = 'unoccupied'
    WHERE BICYCLE_ID = p_bicycle_id;


-- c)


    IF p_update IS NULL THEN


        INSERT INTO BC_BICYCLE_STATUS (
            BICYCLE_ID,
            BICYCLE_STATUS_TIMESTAMP,
            BICYCLE_STATUS_LATITUDE,
            BICYCLE_STATUS_LONGITUDE,
            BICYCLE_STATUS_POWER,
            BICYCLE_STATUS_RANGE,
            BICYCLE_STATUS
        )

        VALUES (
                   p_bicycle_id,
                   CURRENT_DATE,
                   NULL,
                   NULL,
                   NULL,
                   NULL,
                   'not available'

               );

        UPDATE_BICYCLE_STATUS_PP (p_bicycle_id,
                                  NULL,
                                  NULL,
                                  lv_current_power,
                                  lv_current_range,
                                  'not available',
                                  current_date);

    ELSE
        INSERT INTO BC_BICYCLE_STATUS (
            BICYCLE_ID,
            BICYCLE_STATUS_TIMESTAMP,
            BICYCLE_STATUS_LATITUDE,
            BICYCLE_STATUS_LONGITUDE,
            BICYCLE_STATUS_POWER,
            BICYCLE_STATUS_RANGE,
            BICYCLE_STATUS
        )

        VALUES (
                   p_bicycle_id,
                   p_update,
                   NULL,
                   NULL,
                   NULL,
                   NULL,
                   'not available'


               );

        UPDATE_BICYCLE_STATUS_PP (
                p_bicycle_id,
                NULL,
                NULL,
                lv_current_power,
                lv_current_range,
                'not available',
                p_update
            );


    end if;


    commit;

EXCEPTION
    WHEN ex_error THEN
        DBMS_OUTPUT.PUT_LINE(lv_error_text);
        ROLLBACK;

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Cannot remove bicycle');
        ROLLBACK;

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('The error code is: ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('The error code is  ' || SQLERRM);
        ROLLBACK;


END REMOVE_BICYCLE_PP;
