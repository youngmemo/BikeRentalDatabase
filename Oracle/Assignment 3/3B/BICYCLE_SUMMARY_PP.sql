procedure BICYCLE_SUMMARY_PP (
    p_start_date            IN DATE,            -- If NULL, use all dates before end date
    p_end_date              IN DATE,            -- If NULL, use all dates after start date
    p_program_id            IN VARCHAR          -- Must not be NULL.  Must match existing program.
    )
    IS

    lv_error_txt            VARCHAR(200);
    lv_match_program_id     VARCHAR(200);
    lv_number_of_trips      NUMBER;
    lv_bicycle_trip         NUMBER;
    lv_total_distance       INTEGER;

    ex_error                EXCEPTION;

    BEGIN

/*        IF p_start_date IS NULL THEN
            -------------------
        end if;

        IF p_end_date IS NULL THEN
            -------------------
        end if;*/

        IF p_program_id IS NULL THEN
            lv_error_txt := 'Missing mandatory value for program id in BICYCLE_SUMMARY_PP.';
            RAISE ex_error;
        end if;

        SELECT COUNT(*)
        INTO lv_match_program_id
        FROM BC_PROGRAM
        WHERE BC_PROGRAM.PROGRAM_ID = p_program_id;

        IF lv_match_program_id <= 0 THEN
            lv_error_txt := 'Invalid program id ' || p_program_id || ' in BICYCLE_SUMMARY_PP.';
            RAISE ex_error;
        end if;

        FOR TRIPS IN (
            SELECT BICYCLE_ID, COUNT(BICYCLE_ID) , SUM(TRIP_DISTANCE) INTO lv_bicycle_trip, lv_number_of_trips, lv_total_distance
            FROM BC_TRIP
            GROUP BY BICYCLE_ID
            ORDER BY BICYCLE_ID

        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('Bicycle ID: ' || lv_bicycle_trip || ' --- Trips: ' || lv_number_of_trips || ' --- Total distance: ' || lv_total_distance);
        end loop;

        NULL;



    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

    END BICYCLE_SUMMARY_PP;

-----

create procedure BICYCLE_SUMMARY_SP (
    p_start_date            IN DATE,            -- If NULL, use all dates before end date
    p_end_date              IN DATE,            -- If NULL, use all dates after start date
    p_program_id            IN VARCHAR          -- Must not be NULL.  Must match existing program.
    )
    IS

    lv_error_txt            VARCHAR(200);
    lv_match_program_id     VARCHAR(200);
    lv_start_date           DATE;
    lv_end_date             DATE;

    ex_error                EXCEPTION;

    BEGIN

        IF p_start_date IS NULL THEN
        ELSE
            lv_start_date := p_start_date;
        end if;

        IF p_end_date IS NULL THEN
            lv_end_date := lv_end_date > p_start_date;
        ELSE
            lv_end_date := p_end_date;
        end if;

        IF p_program_id IS NULL THEN
            lv_error_txt := 'Missing mandatory value for program id in BICYCLE_SUMMARY_PP.';
            RAISE ex_error;
        end if;

        SELECT COUNT(*)
        INTO lv_match_program_id
        FROM BC_PROGRAM
        WHERE BC_PROGRAM.PROGRAM_ID = p_program_id;

        IF lv_match_program_id <= 0 THEN
            lv_error_txt := 'Invalid program id ' || p_program_id || ' in BICYCLE_SUMMARY_PP.';
            RAISE ex_error;
        end if;

        FOR TRIPS IN (
            SELECT BICYCLE_ID, COUNT(BICYCLE_ID) AS "number_of_trips", SUM(TRIP_DISTANCE) AS "total_distance"
            FROM BC_TRIP
            WHERE -----------
            GROUP BY BICYCLE_ID
            ORDER BY BICYCLE_ID


        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('Bicycle ID: ' || TRIPS.BICYCLE_ID || ' --- Trips: ' || TRIPS."number_of_trips" || ' --- Total distance: ' || TRIPS."total_distance");
        end loop;

        NULL;



    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE(lv_error_txt);
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred.');
    DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
    ROLLBACK;

    END BICYCLE_SUMMARY_SP;
/

