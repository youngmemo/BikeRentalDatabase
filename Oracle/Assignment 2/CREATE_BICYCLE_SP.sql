create or replace procedure CREATE_BICYCLE_SP (
    p_bicycle_id            OUT INTEGER,        -- an output parameter
    p_bicycle_type          IN VARCHAR,         -- Must not be NULL.
    p_capacity              IN INTEGER,
    p_make                  IN VARCHAR,
    p_model                 IN VARCHAR,
    p_color                 IN VARCHAR,
    p_year_acquired         IN INTEGER,
    p_status                IN VARCHAR,         -- Must not be NULL
    p_latitude              IN INTEGER,
    p_longitude             IN INTEGER,
    p_current_power         IN NUMBER,          -- Must be between 0 and 100
    p_current_range         IN NUMBER,          -- Range in meters.  Must not be a negative number
    p_updated               IN DATE
)
    IS
    ex_error                   EXCEPTION;
CHECK_CONSTRAINT_VIOLATED  EXCEPTION;
    PRAGMA EXCEPTION_INIT(CHECK_CONSTRAINT_VIOLATED, -2290);

lv_error_txt               VARCHAR2(200);
lv_exists                  INTEGER;


BEGIN
    /*
    Sjekker om sykkelen eksisterer.
    */
    SELECT COUNT(*)
    INTO lv_exists
    FROM BC_BICYCLE
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;

    /*
    Hvis det er feil sykkeltype.
    */
    IF p_bicycle_type IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_bicycle_type) in CREATE_BICYCLE_SP. No bicycle added';
        RAISE ex_error;
    end if;

    /*
     Hvis statusen ikke eksisterer
    */
    IF p_status IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_status) in CREATE_BICYCLE_SP. No bicycle added';
        RAISE ex_error;
    end if;

    /*
     Om sykkelnummeret allerede eksisterer så gir den feilmelding.
    */
    IF lv_exists > 0  THEN
        lv_error_txt := 'Bicycle number already exists' || p_bicycle_id;
        RAISE ex_error;
    END IF;

    /*
     At batterien ikke kan være mindre enn 0 eller mer enn 100, ellers gis det feilmelding.
    */
    IF p_current_power NOT BETWEEN 0 AND 100 THEN
        lv_error_txt := 'Invalid bicycle current power value: ' ||  p_current_power;
        RAISE ex_error;
    end if;

    /*
     At breddegraden ikke kan være mindre enn -90 eller mer enn 90, ellers gis det feilmelding.
    */
    IF p_latitude < -90  OR p_latitude > 90 THEN
        lv_error_txt:= 'Invalid Latitude: ' || p_latitude;
        RAISE ex_error;
    end if;

    /*
     At lengdegraden ikke kan være mindre enn -180 eller mer enn 180, ellers gis det feilmelding.
    */

    IF p_longitude < -180 OR p_longitude > 180 THEN
        lv_error_txt := 'Invalid longitude: ' || p_longitude;
        RAISE ex_error;
    end if;

    /*
     Det vises hvor langt sykkelen har gått, derfor kan verdien ikke være mindre enn 0, ellers gis det feilmelding.
    */

    IF p_current_range < 0 THEN
        lv_error_txt := 'Invalid range: ' || p_current_range;
        RAISE ex_error;
    end if;

    /*
    At kapasiteten på sykkelen ikke kan være mindre enn 0, ellers gis det feil melding.
    */

    IF p_capacity < 0 THEN
        lv_error_txt := 'Invalid bicycle rider capacity: ' || p_capacity;
        RAISE ex_error;
    end if;


    INSERT INTO BC_BICYCLE(
        BICYCLE_ID,
        BICYCLE_TYPE,
        BICYCLE_RIDER_CAPACITY,
        BICYCLE_MAKE,
        BICYCLE_MODEL,
        BICYCLE_COLOR,
        BICYCLE_YEAR_ACQUIRED,
        BICYCLE_STATUS,
        BICYCLE_LATITUDE,
        BICYCLE_LONGITUDE,
        BICYCLE_CURRENT_POWER,
        BICYCLE_CURRENT_RANGE,
        BICYCLE_STATUS_UPDATED
    )

    values (
               (select max(BC_BICYCLE.BICYCLE_ID) + 1 FROM BC_BICYCLE),
               p_bicycle_type,
               p_capacity,
               p_make,
               p_model,
               p_color,
               p_year_acquired,
               p_status,
               p_latitude,
               p_longitude,
               p_current_power,
               p_current_range,
               p_updated
           )

    RETURNING BICYCLE_ID INTO p_bicycle_id;

    /*
     Error kode
    */
EXCEPTION
    WHEN ex_error THEN
        DBMS_OUTPUT.PUT_LINE(lv_error_txt);
        ROLLBACK;

    WHEN CHECK_CONSTRAINT_VIOLATED THEN  -- catch the ORA-02290 exception
        DBMS_OUTPUT.PUT_LINE('Invalid bicycle type or bicycle status. ');
        DBMS_OUTPUT.PUT_LINE('Bicycle type: ' || p_bicycle_type);
        DBMS_OUTPUT.PUT_LINE('Bicycle status: ' || p_status);
        ROLLBACK;

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
        DBMS_OUTPUT.PUT_LINE('Error code:    ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error msg:     ' || SQLERRM);
        ROLLBACK;

        commit;
END CREATE_BICYCLE_SP;