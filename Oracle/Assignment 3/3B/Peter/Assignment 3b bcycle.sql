create or replace package bcycle3b_pkg 
IS
/* See Assignment 2 bcycle procedures.sql for the specifications for the first 7 procedures here. 
   Specifications for the new procedures are found below.
*/
procedure CREATE_ACCOUNT_PP (
    p_account_id            OUT INTEGER,        -- an output parameter
    p_account_first_name    IN VARCHAR,         -- Must not be NULL
    p_account_last_name     IN VARCHAR,         -- Must not be NULL
    p_account_email         IN VARCHAR,         -- Must be unique
    p_account_password      IN VARCHAR,         -- Must not be NULL
    p_account_mobile_phone  IN VARCHAR,         -- Must not be NULL
    p_account_street        IN VARCHAR,         -- Must not be NULL
    p_account_apartment     IN VARCHAR,
    p_account_city          IN VARCHAR,         -- Must not be NULL
    p_account_state_province IN VARCHAR,       -- Must not be NULL
    p_account_postal_code   IN VARCHAR         -- Must not be NULL
    );
procedure PURCHASE_MEMBERSHIP_PP (
    p_membership_id         OUT INTEGER,        -- an output parameter
    p_pass_type             IN VARCHAR,         -- Must not be NULL.   Must match a pass_type value in BC_PASS
    p_pass_total            IN NUMBER,          -- Must not be NULL
    p_start_time            IN DATE,            -- Must not be NULL
    p_end_time              IN DATE,            -- Must not be NULL.   In a more sophisticated vesion of this procedure, 
                                                -- we could have the end time calculated based on the pass type.
    p_account_id            IN INTEGER          -- Must not be NULL.  Must match an account_id value in BC_ACCOUNT
    );
procedure CREATE_STATION_PP (
    p_station_id            IN VARCHAR,         -- Must not be NULL.  
    p_station_name          IN VARCHAR,         -- Must not be NULL.
    p_station_short_name    IN VARCHAR,
    p_latitude              IN NUMBER,          -- Must not be NULL
    p_longitude             IN NUMBER,          -- Must not be NULL
    p_address               IN VARCHAR,
    p_postal_code           IN VARCHAR,
    p_contact_phone         IN VARCHAR, 
    p_capacity              IN INTEGER,         -- Must not be NULL
    p_vehicles_available    IN INTEGER,         -- Must not be NULL
    p_docks_available       IN INTEGER,         -- Must not be NULL
    p_is_renting            IN NUMBER,            -- Must not be NULL.  
    p_is_returning          IN NUMBER,            -- Must not be NULL.
    p_last_report           IN DATE,            -- Must not be NULL
    p_program_id            IN VARCHAR          -- Must not be NULL
    );
procedure CREATE_BICYCLE_PP (
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
    );
procedure ADD_DOCK_PP (
    p_station_id            IN VARCHAR,         -- Must not be NULL.  Must match a station in BC_STATION table.
    p_dock_id               IN INTEGER,         -- Must not be NULL.  Small integer (1,2,3,...)
    p_dock_status           IN VARCHAR,         -- Must not be NULL.  Value must match check constraint. 
    p_bicycle_id            IN INTEGER          -- May be NULL. Any value must match existing value in BC_BICYCLE.
    );
procedure BEGIN_TRIP_PP (
    p_trip_id               OUT INTEGER,        -- an output parameter
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match value value in BC_BICYCLE and BC_DOCK tables.
    p_start_time            IN DATE,            -- If NULL, use CURRENT_DATE system date value
    p_membership_id         IN INTEGER          -- Must not be NULL.  Must match value in BC_MEMBERSHIP table.
    );
procedure END_TRIP_PP (
    p_trip_id               OUT INTEGER,        -- Return the identifier of the trip completed
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match value value in BC_BICYCLE and BC_DOCK tables.
    p_station_id            IN VARCHAR,         -- The station where the trip ends
    p_dock_id               IN INTEGER,         -- The number of the docking point where the trip ends
    p_end_time              IN DATE,            -- If NULL, use CURRENT_DATE system date value
    p_distance              IN NUMBER,
    p_cost                  IN NUMBER
    );
/*
    UPDATE_STATION_STATUS_PP.  Update the station status by querying the BC_DOCK 
    table to determine how many docks on a this station are available and how 
    many bicycles are available.  The flags for whether a station is renting or 
    accepting returns are also updated.
    
    This procedure updates the following columns in the indicated station:
    * station_vehicles_available
    * station_docks_available
    * station_is_renting : if the updated number of vehicles > 0
    * station_is_returning : if the number of docks available > 0
    * station_last_reported : if the parameter is NULL, use CURRENT_DATE value
    
    PARAMETERS:  Described below
    
    ERROR MESSAGES:
        Error text:  "Missing mandatory value for station id in UPDATE_STATION_STATUS_PP.  Station status not updated."
        Error meaning:  The p_station_id value is NULL.
        Error effect:  No data are updated in BC_STATION.
       
        Error text:  "Invalid station id (X) in UPDATE_STATION_STATUS_PP.  Station status not updated."
        Error meaning:  The p_station_id value is not found in the BC_STATION table.  Here, 'X' is the 
                        p_station_id value passed into the procedure, which and should be included in the error message.
        Error effect:  No data are updated in BC_STATION.
   
*/
procedure UPDATE_STATION_STATUS_PP (
    p_station_id            IN VARCHAR,         -- Must not be NULL.
    p_update                IN DATE             -- The update date and time.  If NULL, use CURRENT_DATE
    );
    
/* 
    UPDATE_BICYCLE_STATUS_PP.  Add a new row to the BC_BICYCLE_STATUS table 
    reflecting the latitude, longitude, power, range, and status of the bicycle.  
    In addition, the procedure updates the BC_BICYCLE table row for the indicated 
    bicycle.  It updates the bicycle latitude, longitude, current power, current range,
    status, and status updated values.   In this way, the BC_BICYCLE contains the 
    most recent status and location information for the bicycle, while the BC_BICYCLE_STATUS
    table contains the whole history of the bicycle.

   PARAMETERS:  Described below
    
    ERROR MESSAGES:
    Error text:  "Missing mandatory value for (x) in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated."
    Error meaning:  A mandatory value is missing.  Here x = the name of the parameter whose value is missing.
    Error effect:  No data are updated in BC_STATION.
       
    Error text:  "Invalid bicycle id (X) in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated."
    Error meaning:  The p_bicycle_id value is not found in the BC_BICYCLE table.  Here, 'X' is the 
                    p_bicycle_id value passed into the procedure, which should be included in the error message.
    Error effect:  No data are updated in BC_BICYCLE or BC_BICYCLE_STATUS.
        
    Error text: "Invalid bicycle status (x)."
    Error meaning:  The value of the bicycle status parameter is not one of the values permitted by the CHECK constraint on 
                    bicycle_type.  Here, x = the value of bicycle status passed into the procedure.
    Error effect:  No new status data inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.  
    
    Error text: "Invalid bicycle current power value (x)."
    Error meaning:  The value of the bicycle current power  parameter is not a value between 0 and 100.  Here, x = the value 
                    of bicycle current power  passed into the procedure.
    Error effect:  No new bicycle power data inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.  
     
    Error text: "Invalid Latitude (x)."
    Error meaning:  The value of the p_latitude parameter is not within the range of valid latitude values (between -90 and 90).    
                   Here, x = the value of p_latitude parameter passed into the procedure.
    Error effect:  No new bicycle location inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.  
    
    Error text:  "Invalid longitude (x)."
    Error meaning:  The value of the p_longitiude parameter is not within the range of valid longitude values (between -180 and 180).    
                   Here, x = the value of p_longitude parameter passed into the procedure.
    Error effect:  No new bicycle location inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.  
    
    
    
*/
procedure UPDATE_BICYCLE_STATUS_PP (
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match an existing bicycle id in BC_BICYCLE
    p_latitude              IN INTEGER,          
    p_longitude             IN INTEGER,         
    p_power                 IN INTEGER,         -- Percentage, between 0 and 100
    p_range                 IN INTEGER,         -- remaining range, in meters
    p_status                IN VARCHAR,         -- Must not be NULL.  Permitted values:  'in use', 'available', 'unavailable'
    p_updated               IN DATE             -- If NULL, use CURRENT_DATE value
    );
    
/* 
    UPDATE_BICYCLE_STATUS_PP.  Add a new row to the BC_BICYCLE_STATUS table 
    reflecting the latitude, longitude, and status of the bicycle (but not power and range).  
    In addition, the procedure updates the BC_BICYCLE table row for the indicated 
    bicycle.  It updates the bicycle latitude, longitude, status, and status updated 
    values.   In this way, the BC_BICYCLE contains the most recent status and 
    location information for the bicycle, while the BC_BICYCLE_STATUS
    table contains the whole history of the bicycle.

    PARAMETERS:  Described below
    
    ERROR MESSAGES:
    Error text:  "Missing mandatory value for (x) in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated."
    Error meaning:  A mandatory value is missing.  Here x = the name of the parameter whose value is missing.
    Error effect:  No data are updated in BC_STATION.
       
    Error text:  "Invalid bicycle id (X) in UPDATE_BICYCLE_STATUS_PP.  Bicycle status not updated."
    Error meaning:  The p_bicycle_id value is not found in the BC_BICYCLE table.  Here, 'X' is the 
                    p_bicycle_id value passed into the procedure, which should be included in the error message.
    Error effect:  No data are updated in BC_BICYCLE or BC_BICYCLE_STATUS.
        
    Error text: "Invalid bicycle status (x)."
    Error meaning:  The value of the bicycle status parameter is not one of the values permitted by the CHECK constraint on 
                    bicycle_type.  Here, x = the value of bicycle status passed into the procedure.
    Error effect:  No new status data inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.  
    
    Error text: "Invalid Latitude (x)."
    Error meaning:  The value of the p_latitude parameter is not within the range of valid latitude values (between -90 and 90).    
                   Here, x = the value of p_latitude parameter passed into the procedure.
    Error effect:  No new bicycle location inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.  
    
    Error text:  "Invalid longitude (x)."
    Error meaning:  The value of the p_longitiude parameter is not within the range of valid longitude values (between -180 and 180).    
                   Here, x = the value of p_longitude parameter passed into the procedure.
    Error effect:  No new bicycle location inserted into the BC_BICYCLE_STATUS table or BC_BICYCLE table.  
*/
procedure UPDATE_BICYCLE_STATUS_PP (
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.  Must match an existing bicycle id in BC_BICYCLE
    p_latitude              IN INTEGER,          
    p_longitude             IN INTEGER,         
    p_status                IN VARCHAR,         -- Must not be NULL.  Permitted values:  'in use', 'available', 'unavailable'
    p_updated               IN DATE             -- If NULL, use CURRENT_DATE value 
    ); 

/* 
    NUMBER_OF_BICYCLES_PF.  This function takes as input parameters a station 
    identifier and a type of bicycle (�electric�, �cargo�, �classic�, �smart�) 
    and returns the number of bicycles of this type docked at this station. 
    The procedure should function correctly regardless of the case of the input parameter.
    p_bicycle_type values of ('electric', 'ELECTRIC', 'Electric') should all produce
    the same result.  It is not a requirement that this function check to see whether a valid
    bicycle type has been passed in.  In such cases, the function will return a value 
    of zero (0).

    Error text:  "Missing mandatory value for (x) in NUMBER_OF_BICYCLES_PF."
    Error meaning:  A mandatory value is missing.  Here x = the name of the parameter whose value is missing.
    Error effect:  The function returns a NULL value.
*/
function NUMBER_OF_BICYCLES_PF (
    p_station_id            IN VARCHAR,         -- Must not be NULL.
    p_bicycle_type          IN VARCHAR          -- Must not be NULL.
    ) RETURN INTEGER;
    
/*  REMOVE_BICYCLE_PP.  This procedure takes a bicycle out of service, removing 
    it from its dock and setting its status to �unavailable�.  This procedure also
    calls the UPDATE_BICYCLE_STATUS_PP procedure with NULL values for the latitude and 
    longitude and a status value of 'unavailable'.  In this way the bicycle status
    log reflects the fact that the bicycle has been taken out of service.  In short, 
    this procedure:
    a) updates the row in the BC_BICYCLE table for this bicycle to set the status to 'unavailable'
       and the bicycle_status_updated to the date indicated.
    b) updates the row in BC_DOCK for this bicycle, setting the bicycle_id value to NULL and 
       the dock_status to 'available'
    c) inserts a new row in BC_BICYCLE_STATUS with the bicycle status = 'unavailable'
       and the status timestamp set to the date passed into the procedure.  Longitude,
       latitude, power, and range are to be NULL.
*/
procedure REMOVE_BICYCLE_PP (
    p_bicycle_id            IN INTEGER,         -- Must not be NULL.
    p_update                IN DATE             -- If NULL, use CURRENT_DATE
    );
    
/* 
LIST_AVAILABLE_BICYCLES_PP.  This procedure prints out a list of the bicycles 
that are available at a given station, together with each bicycle�s type.  The 
procedure should print (DBMS_OUTPUT.PUT_LINE) each bicycle's id and type.  If 
no bicycles are available in the station, the procedure should print "No bicycles available."

    ERROR MESSAGES:
        Error text:  "Missing mandatory value for station id in LIST_AVAILABLE_BICYCLES_PP."
        Error meaning:  The p_station_id value is NULL.
       
        Error text:  "Invalid station id (X) in LIST_AVAILABLE_BICYCLES_PP."
        Error meaning:  The p_station_id value is not found in the BC_STATION table.  Here, 'X' is the 
                        p_station_id value passed into the procedure, which and should be included in the error message.
*/
procedure LIST_AVAILABLE_BICYCLES_PP (
    p_station_id            IN VARCHAR          -- Must not be NULL.
    );
    
/* 
LIST_AVAILABLE_BICYCLES_PP.  For a given time window (defined by a start date 
and an end date) and program, this procedure lists each bicycle used on at least 
one trip within that time window and its type, listing the bicycle id, the number 
of trips and the total distance ridden.  If the start date is later then the end 
date, then the procedure should interpret the dates as inverted, and still assume the 
time window is between the two dates.  

    ERROR MESSAGES:
        Error text:  "Missing mandatory value for program id in BICYCLE_SUMMARY_PP."
        Error meaning:  The p_program_id value is NULL.
       
        Error text:  "Invalid program id (X) in BICYCLE_SUMMARY_PP."
        Error meaning:  The p_program_id value is not found in the BC_PROGRAM table.  Here, 'X' is the 
                        p_program_id value passed into the procedure, which and should be included in the error message.

*/
procedure BICYCLE_SUMMARY_PP (
    p_start_date            IN DATE,            -- If NULL, use all dates before end date
    p_end_date              IN DATE,            -- If NULL, use all dates after start date
    p_program_id            IN VARCHAR          -- Must not be NULL.  Must match existing program.
    );
end bcycle3b_pkg;
/