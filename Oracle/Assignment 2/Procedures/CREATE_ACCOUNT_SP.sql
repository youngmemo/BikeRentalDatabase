create or replace procedure CREATE_ACCOUNT_SP(
    p_account_id                OUT INTEGER, -- an output parameter
    p_account_first_name        IN VARCHAR, -- Must not be NULL
    p_account_last_name         IN VARCHAR, -- Must not be NULL
    p_account_email             IN VARCHAR, -- Must be unique
    p_account_password          IN VARCHAR, -- Must not be NULL
    p_account_mobile_phone      IN VARCHAR, -- Must not be NULL
    p_account_street            IN VARCHAR, -- Must not be NULL
    p_account_apartment         IN VARCHAR,
    p_account_city              IN VARCHAR, -- Must not be NULL
    p_account_state_province    IN VARCHAR, -- Must not be NULL
    p_account_postal_code       IN VARCHAR  -- Must not be NULL
)


    IS

ex_error                            EXCEPTION;
    lv_error_txt                        VARCHAR2(200);
    lv_exists                           INTEGER;

BEGIN

    SELECT COUNT(*)
    INTO lv_exists
    FROM BC_ACCOUNT
    WHERE BC_ACCOUNT.ACCOUNT_EMAIL = p_account_email;


/*
Hvis brukeren allerede eksisterer
*/
    IF lv_exists > 0  THEN
        lv_error_txt := 'Duplicate email address. Account email addresses must be unique.';
        RAISE ex_error;
    END IF;


    /*
   Hvis det ikke er tilstrekkelig informasjon
    */
    IF p_account_first_name IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_first_name;
        RAISE ex_error;
    end if;

/*
Hvis det ikke er tilstrekkelig informasjon
 */
    IF p_account_last_name IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_last_name;
        RAISE ex_error;
    end if;


/*
Hvis brukeren sitt passord er feil/ ikke korrekt/ ikke lagt inn
 */
    IF p_account_password IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_password;
        RAISE ex_error;
    end if;


    /*
   Hvis det ikke er tilstrekkelig informasjon
    */
    IF p_account_mobile_phone IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_mobile_phone;
        RAISE ex_error;
    end if;


    /*
   Hvis det ikke er tilstrekkelig informasjon
    */
    IF p_account_street IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_street;
        RAISE ex_error;
    end if;

    /*
   Hvis det ikke er tilstrekkelig informasjon
    */
    IF p_account_city IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_city;
        RAISE ex_error;
    end if;



    /*
   Hvis det ikke er tilstrekkelig informasjon
    */
    IF p_account_state_province IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_state_province;
        RAISE ex_error;
    end if;



    /*
   Hvis det ikke er tilstrekkelig informasjon
    */
    IF p_account_postal_code IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter in CREATE_ACCOUNT_SP.  No account added. ' || p_account_postal_code;
        RAISE ex_error;
    end if;


    /*
    EXCEPTION
    */

    INSERT INTO
        BC_ACCOUNT (
        ACCOUNT_ID,
        ACCOUNT_FIRST_NAME,
        ACCOUNT_LAST_NAME,
        ACCOUNT_EMAIL,
        ACCOUNT_PASSWORD,
        ACCOUNT_MOBILE_PHONE,
        ACCOUNT_STREET,
        ACCOUNT_APARTMENT,
        ACCOUNT_CITY,
        ACCOUNT_STATE_PROVINCE,
        ACCOUNT_POSTAL_CODE)


    VALUES (
               (select max(ACCOUNT_ID) + 1 FROM BC_ACCOUNT),
               p_account_first_name,
               p_account_last_name,
               p_account_email,
               p_account_password,
               p_account_mobile_phone,
               p_account_street,
               p_account_apartment,
               p_account_city,
               p_account_state_province,
               p_account_postal_code
           )

    RETURNING ACCOUNT_ID INTO p_account_id;


EXCEPTION
    WHEN ex_error THEN
        DBMS_OUTPUT.PUT_LINE(lv_error_txt);
        ROLLBACK;

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
        DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
        ROLLBACK;

        commit;
END CREATE_ACCOUNT_SP;