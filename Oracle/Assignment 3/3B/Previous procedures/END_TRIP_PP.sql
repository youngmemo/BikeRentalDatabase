procedure END_TRIP_PP (
    p_trip_id               OUT INTEGER,        -- Return the identifier of the trip completed
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match value value in BC_BICYCLE and BC_DOCK tables.
    p_station_id            IN VARCHAR,         -- The station where the trip ends
    p_dock_id               IN INTEGER,         -- The number of the docking point where the trip ends
    p_end_time              IN DATE,            -- If NULL, use CURRENT_DATE system date value
    p_distance              IN NUMBER,
    p_cost                  IN NUMBER
    )
IS
    ex_error                EXCEPTION;

    lv_error_txt            VARCHAR2(200);
    lv_start_time           DATE;
    lv_dock_status          VARCHAR2(200);
    lv_duration             NUMBER;
    lv_unique_values        INTEGER;
    lv_dock_value           VARCHAR2(200);
    lv_check_endtime        VARCHAR2(200);
    lv_current_trip         INTEGER;
    lv_bicycle_counter      INTEGER;
    lv_dock_recognized      INTEGER;
    lv_final_date           DATE;

BEGIN

    --Her printer jeg alle errors jeg vil skal dukke opp
    IF p_bicycle_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_bicycle_id) in END_TRIP_SP';
        RAISE ex_error;
    END IF;

    IF p_station_id IS NULL THEN
        lv_error_txt := 'Missing mandatory value for parameter (p_station_id) in END_TRIP_SP';
        RAISE ex_error;
    END IF;

    --Dette gjør vi siden vi ikke vet hva end time er på alle sykler. så hvis end time er null, skal den selecte
    --TRIP_ID inn i en lv_current_trip hvor bicycle_id er det du skriver inn og Trip_Start_Time er lv_start_time.
    IF lv_check_endtime IS NULL THEN
        SELECT TRIP_ID INTO lv_current_trip
        FROM BC_TRIP
        WHERE BICYCLE_ID = p_bicycle_id AND TRIP_START_TIME = lv_start_time;
    END IF;

    IF p_end_time IS NULL THEN
        lv_final_date := CURRENT_DATE;
    ELSE
        lv_final_date := p_end_time;
    END IF;


    --Dette er en select statement som skal vise starttiden på en tur som du angir ved gitt bicycle id og trip_end_time
    SELECT TRIP_START_TIME INTO lv_start_time
    FROM BC_TRIP
    WHERE BC_TRIP.BICYCLE_ID = p_bicycle_id AND BC_TRIP.TRIP_END_TIME IS NULL;


    --Denne if statement refererer til Select dock_Status hvor du skal se om doocking point er occupied, hvis den er det
    --skal det printes "dock not available"
    IF lv_dock_status = 'occupied' OR lv_dock_status = 'out of service' THEN
        lv_error_txt := 'Dock not available';
        RAISE ex_error;
    END IF;


    -- Denne select statement sjekker om dock er gjenkjennelig i gitt stasjon_id og dock_id
    SELECT COUNT(*)
    INTO lv_dock_recognized
    FROM BC_DOCK
    WHERE STATION_ID = p_station_id AND DOCK_ID = p_dock_id;

    --IF statement som printer error message hvis dock du skriver inn ikke eksisterer.
    IF lv_dock_recognized <= 0 THEN
        lv_error_txt := 'Dock not available.';
        RAISE ex_error;
    END IF;


    --Denne IF statement refererer til SELECT trip_Start_time. Hvis startiden er tidligere enn sluttiden,
    --skal det printes error.
    IF lv_start_time > p_end_time THEN
        lv_error_txt := 'Error in return time. End time cannot be earlier than the start time.';
        RAISE ex_error;
    END IF;


    --Her måtte vi ta end time minus med start time for å finne ut av hva time_duration (hvor lang turen er) blir mellom de.
    SELECT (p_end_time - lv_start_time) * 24 * 60 AS TripDuration INTO lv_duration
    FROM BC_TRIP
    WHERE BC_TRIP.BICYCLE_ID = p_bicycle_id AND TRIP_END_TIME IS NULL;

    --SELECT statment som skal vise de ulike dock status når du angir station_id og dock_id
    SELECT DOCK_STATUS INTO lv_dock_status
    FROM BC_DOCK
    WHERE STATION_ID = p_station_id AND DOCK_ID = p_dock_id;


    --Hvis docksstatus er unoccupied, så skal den oppdatere seg når du legger inn sykkel og bli til occupied
    --Restene av koden er bare at du legger inn bicycleid, stationid og dockid for den nye sykkelen du parkerer inn.
    IF lv_dock_status = 'unoccupied' THEN
        UPDATE BC_DOCK
        SET DOCK_STATUS = 'occupied', BICYCLE_ID = p_bicycle_id
        WHERE STATION_ID = p_station_id AND DOCK_ID = p_dock_id;
        ELSE
            lv_error_txt := 'You cant dock a bicycle where the dock status is occupied or out of service';
        RAISE ex_error;

        END IF;


    --Her oppdaterer jeg BC_Station hvor jeg velger max value og plusser det med en siden når jeg parkerer en
    --sykkel i en dock, så vil det bli lagt til en ekstra sykkel der som kan benyttes derfor blir det + 1
    UPDATE BC_STATION
    SET STATION_VEHICLES_AVAILABLE = (SELECT MAX(BC_STATION.STATION_VEHICLES_AVAILABLE) + 1 FROM BC_STATION)
    WHERE STATION_ID = p_station_id;

    --Her gjør jeg omtrent det samme men bare at det blir - 1 siden da mister jeg en sykkel fra en dock siden jeg
    --parkerer den en annen plass eller er midt i en tur.
    UPDATE BC_STATION
    SET STATION_DOCKS_AVAILABLE = (SELECT MAX(BC_STATION.STATION_DOCKS_AVAILABLE) - 1 FROM BC_STATION)
    WHERE STATION_ID = p_station_id;


    -- SELECT statement som teller hvor mange antall sykler det er av den bicycle-iden du skriver inn.
    SELECT COUNT(*)
    INTO lv_bicycle_counter
    FROM BC_BICYCLE
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;

    --IF statment som skal printe error message om sykkelen ikke stemmer (lv_bicycle_counter)
    IF lv_bicycle_counter <= 0 THEN
        lv_error_txt := 'Invalid bicycle identifier: ' || p_bicycle_id;
        RAISE ex_error;
    END IF;


    --Her teller den antall unike verdier det er i dock_status når det kommer til den statsjon iden jeg skriver inn
    --for eks bcycle_heartland_1917 har 3 fordi den den har dock verdien occupied, unoccupied og out of service
    SELECT COUNT (*) INTO lv_unique_values
    FROM (SELECT DISTINCT DOCK_STATUS FROM BC_DOCK WHERE BC_DOCK.STATION_ID = p_station_id);

    --Her bruker jeg en SELECT statement for å hente første dock status raden med gitt station_id
    SELECT DISTINCT DOCK_STATUS INTO lv_dock_value
    FROM BC_DOCK
    WHERE BC_DOCK.STATION_ID = p_station_id AND ROWNUM = 1;

    --Hvis dock status er occupied eller out of service skal den oppdatere Stations is returning til false(0) og
    -- Station_is_renting blir satt til true(1).
    IF lv_unique_values = 1 AND lv_dock_value = 'occupied' OR lv_dock_value = 'out of service' THEN
        UPDATE BC_STATION
        SET STATION_IS_RETURNING = 0,
            STATION_IS_RENTING = 0
        WHERE BC_STATION.STATION_ID = p_station_id;
    END IF;


    -- Her Oppdaterer jeg bicycle statusen til available
    UPDATE BC_BICYCLE
    SET BICYCLE_STATUS = 'available'
    WHERE BC_BICYCLE.BICYCLE_ID = p_bicycle_id;


    --Find the trip identifier for the current trip using the indicated bicycle
    SELECT TRIP_END_TIME INTO lv_check_endtime FROM BC_TRIP
    WHERE BICYCLE_ID = p_bicycle_id AND TRIP_START_TIME = lv_start_time;


    --Her skal vi ikke legge inn noe i tabell men vi skal oppdatere som vi ble bedt om i oppgaveteksten og for å
    --oppdatere gjør vi det på følgende måte:
    UPDATE BC_TRIP
    SET TRIP_END_TIME = lv_final_date,
        TRIP_DURATION = lv_duration,
        TRIP_DISTANCE = p_distance,
        TRIP_COST = p_cost,
        END_STATION_ID = p_station_id
    WHERE TRIP_ID = lv_current_trip

    RETURNING TRIP_ID INTO p_trip_id;

    COMMIT;

    EXCEPTION
    WHEN ex_error THEN
    DBMS_OUTPUT.PUT_LINE (lv_error_txt);
    ROLLBACK;

    WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('The end trip does not exist');
    ROLLBACK;

    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('The error code is:  ' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('The error msg is:  ' || SQLERRM);
    ROLLBACK;

END END_TRIP_PP;