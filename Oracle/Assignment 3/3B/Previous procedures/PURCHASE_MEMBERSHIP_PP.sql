procedure PURCHASE_MEMBERSHIP_PP (
    p_membership_id         OUT INTEGER,        -- an output parameter
    p_pass_type             IN VARCHAR,         -- Must not be NULL.   Must match a pass_type value in BC_PASS
    p_pass_total            IN NUMBER,          -- Must not be NULL
    p_start_time            IN DATE,            -- Must not be NULL
--  p_end_time              IN DATE,            -- Must not be NULL.   In a more sophisticated vesion of this procedure,
                                                -- we could have the end time calculated based on the pass type.
                                                -- Since we made the sophisticated version, we dont need this parameter anymore.
    p_account_id            IN INTEGER          -- Must not be NULL.  Must match an account_id value in BC_ACCOUNT
    )



IS

    ex_error                    EXCEPTION;

    lv_error_txt                VARCHAR(200);
    lv_membership_counter       INTEGER;
    lv_pass_type_counter        INTEGER;
    lv_account_counter          INTEGER;
    lv_end_date                 DATE;
    lv_pass_id                  INTEGER;


BEGIN

    SELECT COUNT(*)
    INTO lv_membership_counter
    FROM BC_MEMBERSHIP
    WHERE BC_MEMBERSHIP.MEMBERSHIP_ID = p_membership_id;

 -- Checks if something is written in the p_pass_type parameter
    IF p_pass_type IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (p_pass_type) in PURCHASE_MEMBERSHIP_SP.  No membership added.';
    RAISE ex_error;
    END IF;

 -- Checks if something is written in the p_pass_total parameter
    IF p_pass_total IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (p_pass_total) in PURCHASE_MEMBERSHIP_SP.  No membership added.';
    RAISE ex_error;
    END IF;

 -- Checks if something is written in the p_start_time parameter
    IF p_start_time IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (p_start_time) in PURCHASE_MEMBERSHIP_SP.  No membership added.';
    RAISE ex_error;
    END IF;

/*  Since we made the sophisticated version we dont need to check this parameter anymore.
    IF p_end_time IS NULL THEN
    lv_error_txt := 'Missing mandatory value for parameter (p_start_time) in PURCHASE_MEMBERSHIP_SP.  No membership added.';
    RAISE ex_error;
    END IF;*/

 -- Checks if something is written in the p_account_id parameter
    IF p_account_id IS NULL THEN
    lv_error_txt := ('Missing mandatory value for parameter (p_account_id) in PURCHASE_MEMBERSHIP_SP.  No membership added.');
    RAISE ex_error;
    END IF;


-- Here we check if p_pass_type is 'Fun!Pass'
    IF p_pass_type = 'FUN!Pass' THEN
    -- If it is then the membership will be 1 today
    SELECT (p_start_time+1) INTO lv_end_date FROM DUAL;

-- Here we check if the p_pass_type is Heartland Monthly Pass, if it is- then the membership will be 30 days now.
    ELSIF p_pass_type = 'Heartland Monthly Pass' THEN
    SELECT (p_start_time+30) INTO lv_end_date FROM DUAL;

-- Here we check if the p_pass_type is 'Heartland Pass (Annual pay)', if it is then the membership will be 365 days today.
    ELSIF p_pass_type = 'Heartland Pass (Annual pay)' THEN
    SELECT (p_start_time+365) INTO lv_end_date FROM DUAL;
    end if;


--Here we give the lv_pass_id variable the value that will be on pass_id, for the pass_type.
    SELECT PASS_ID INTO lv_pass_id
    FROM BC_PASS
    WHERE BC_PASS.PASS_TYPE = p_pass_type;

-- Here we check if pass_type exist that is given on p_pass_type
    SELECT COUNT(*) INTO lv_pass_type_counter
    FROM BC_PASS
    WHERE BC_PASS.PASS_TYPE = p_pass_type;

-- If it does not find the value, then this error will come up.
    IF lv_pass_type_counter <= 0 THEN
    lv_error_txt := 'Invalid membership pass type: ' || p_pass_type;
    RAISE ex_error;
    END IF;


-- Here we check if account ID exist like it is given in p_account_id
    SELECT COUNT(*) INTO lv_account_counter
    FROM BC_ACCOUNT
    WHERE BC_ACCOUNT.ACCOUNT_ID = p_account_id;

-- If lv_account_counter does not have a value, then print out 'invalid account'.
    IF lv_account_counter = 0 THEN
    lv_error_txt := 'Invalid account: ' || p_account_id;
    RAISE ex_error;
    END IF;


 -- Inserts the parameters into the BC_MEMBERSHIP table
    INSERT INTO BC_MEMBERSHIP (
    MEMBERSHIP_ID,
    MEMBER_PASS_TOTAL,
    MEMBER_PASS_START_TIME,
    MEMBER_PASS_END_TIME,
    ACCOUNT_ID
    )

    VALUES (
    (SELECT MAX(BC_MEMBERSHIP.MEMBERSHIP_ID) + 1 FROM BC_MEMBERSHIP),
    p_pass_total,
    p_start_time,
    lv_end_date,
    p_account_id
    )

    RETURNING MEMBERSHIP_ID INTO p_membership_id;

 -- Updates the pass_id for the given membership_id

    UPDATE BC_MEMBERSHIP
    SET PASS_ID = lv_pass_id
    WHERE MEMBERSHIP_ID = p_membership_id;

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

END PURCHASE_MEMBERSHIP_PP;