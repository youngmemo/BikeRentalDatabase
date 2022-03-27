create procedure BICYCLE_SUMMARY_PP (
    p_start_date                       IN DATE,            -- If NULL, use all dates before end date
    p_end_date                         IN DATE,            -- If NULL, use all dates after start date
    p_program_id                       IN VARCHAR          -- Must not be NULL.  Must match existing program.
    )

IS

    lv_error_txt                       VARCHAR(200);
    lv_match_program_id_in_program     VARCHAR(200);
    lv_match_program_id_in_station     VARCHAR(200);
    lv_inverted_start                  DATE;
    lv_inverted_end                    DATE;

    ex_error                           EXCEPTION;

BEGIN

    -- Checks if value is written in the p_program_id parameter
    -- If not, raises exception.
    IF p_program_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_program_id in BICYCLE_SUMMARY_PP.';
        RAISE ex_error;
    END IF;

    -- Checks if value is written in the p_start_date and p_end_date parameters
    -- If not, raises exception.
   IF p_start_date IS NULL AND p_end_date IS NULL THEN
        lv_error_txt := 'Missing mandatory value for p_start_date and p_end_date in BICYCLE_SUMMARY_PP.';
        RAISE ex_error;
   END IF;


    -- Checks if the program id written exists in the BC_PROGRAM table.
    -- If not, raises exception.
    SELECT COUNT(*)
    INTO lv_match_program_id_in_program
    FROM BC_PROGRAM
    WHERE BC_PROGRAM.PROGRAM_ID = p_program_id;

    IF lv_match_program_id_in_program <= 0 THEN
        lv_error_txt := 'Invalid program id ' || p_program_id || ' in BICYCLE_SUMMARY_PP.';
        RAISE ex_error;
    END IF;

    -- Checks if the program id written exists in the BC_STATION table.
    -- If not, raises exception.
    SELECT COUNT(*)
    INTO lv_match_program_id_in_station
    FROM BC_STATION
    WHERE BC_STATION.PROGRAM_ID = p_program_id;

    IF lv_match_program_id_in_station <= 0 THEN
        lv_error_txt := 'Invalid program id ' || p_program_id || '. The program id written is not found in the station table in BICYCLE_SUMMARY_PP.';
        RAISE ex_error;
    END IF;


    -- This is the version that runs if everything is right and correct.
    -- This one selects three columns:
    -- 1. Shows bicycle ID.
    -- 2. Counts total trips for the bicycle.
    -- 3. Sums all the distances from the trips for the bicycle.
    IF p_end_date > p_start_date THEN
        FOR trips IN (
            SELECT BICYCLE_ID, COUNT(BICYCLE_ID) AS "number_of_trips", SUM(TRIP_DISTANCE) AS "total_distance"
            FROM BC_TRIP
            WHERE TRIP_START_TIME BETWEEN p_start_date AND p_end_date
            GROUP BY BICYCLE_ID
            ORDER BY BICYCLE_ID
        )

        -- Prints summary for each bicycle for the given dates.
        LOOP
            DBMS_OUTPUT.PUT_LINE('Bicycle ID: ' || trips.BICYCLE_ID || ' --- Trips: ' || trips."number_of_trips" || ' --- Total distance: ' || trips."total_distance");
        end loop;
    END IF;

    -- Reverts the p_start_date and p_end_date so it runs anyway.
    IF p_start_date > p_end_date THEN

        lv_inverted_end := p_start_date;
        lv_inverted_start := p_end_date;

        FOR trips IN (
            SELECT BICYCLE_ID, COUNT(BICYCLE_ID) AS "number_of_trips", SUM(TRIP_DISTANCE) AS "total_distance"
            FROM BC_TRIP
            WHERE TRIP_START_TIME BETWEEN lv_inverted_start AND lv_inverted_end -- Reverts here with the given local variables.
            GROUP BY BICYCLE_ID
            ORDER BY BICYCLE_ID
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('Bicycle ID: ' || trips.BICYCLE_ID || ' --- Trips: ' || trips."number_of_trips" || ' --- Total distance: ' || trips."total_distance");
        end loop;
    END IF;

    -- Shows the bicycle summary for all the dates before end date
    IF p_start_date IS NULL THEN
        FOR trips IN (
            SELECT BICYCLE_ID, COUNT(BICYCLE_ID) AS "number_of_trips", SUM(TRIP_DISTANCE) AS "total_distance"
            FROM BC_TRIP
            WHERE TRIP_START_TIME < p_end_date -- Dates before end date
            GROUP BY BICYCLE_ID
            ORDER BY BICYCLE_ID
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('Bicycle ID: ' || trips.BICYCLE_ID || ' --- Trips: ' || trips."number_of_trips" || ' --- Total distance: ' || trips."total_distance");
        end loop;
    END IF;

    -- Shows the bicycle summary for all the dates after start date
    IF p_end_date IS NULL THEN
        FOR trips IN (
            SELECT BICYCLE_ID, COUNT(BICYCLE_ID) AS "number_of_trips", SUM(TRIP_DISTANCE) AS "total_distance"
            FROM BC_TRIP
            WHERE BC_TRIP.TRIP_END_TIME > p_start_date -- Dates after start date.
            GROUP BY BICYCLE_ID
            ORDER BY BICYCLE_ID
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('Bicycle ID: ' || trips.BICYCLE_ID || ' --- Trips: ' || trips."number_of_trips" || ' --- Total distance: ' || trips."total_distance");
        end loop;
    END IF;


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