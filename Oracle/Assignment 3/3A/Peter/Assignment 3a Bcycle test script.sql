/*

Test script for IS-309 Assignment 3a

This test script tests whether package BCYCLE3A_PKG is functioning properly.

Be sure to turn on DBMS_OUTPUT before running these scripts.
View > Dbms_output
Click on '+' to add the connection.

*/

/*  TEST 1
    PROCEDURE:  BCYCLE3A_PKG.CREATE_ACCOUNT_PP
    EXPECTED RESULT:  Success.  A new account is inserted into the BC_ACCOUNT table and
            the new account id value is returned to the calling environment.    
*/

DECLARE
  P_ACCOUNT_ID NUMBER;
  P_ACCOUNT_FIRST_NAME VARCHAR2(200);
  P_ACCOUNT_LAST_NAME VARCHAR2(200);
  P_ACCOUNT_EMAIL VARCHAR2(200);
  P_ACCOUNT_PASSWORD VARCHAR2(200);
  P_ACCOUNT_MOBILE_PHONE VARCHAR2(200);
  P_ACCOUNT_STREET VARCHAR2(200);
  P_ACCOUNT_APARTMENT VARCHAR2(200);
  P_ACCOUNT_CITY VARCHAR2(200);
  P_ACCOUNT_STATE_PROVINCE VARCHAR2(200);
  P_ACCOUNT_POSTAL_CODE VARCHAR2(200);
BEGIN
  P_ACCOUNT_FIRST_NAME := 'Johnnie';
  P_ACCOUNT_LAST_NAME := 'Mowinckel';
  P_ACCOUNT_EMAIL := 'johnnieM@yahooo.com';
  P_ACCOUNT_PASSWORD := 'what is a password';
  P_ACCOUNT_MOBILE_PHONE := '402-777-2231';
  P_ACCOUNT_STREET := '2200 Dodge Street';
  P_ACCOUNT_APARTMENT := NULL;
  P_ACCOUNT_CITY := 'Omaha';
  P_ACCOUNT_STATE_PROVINCE := 'NE';
  P_ACCOUNT_POSTAL_CODE := '68102';

  CREATE_ACCOUNT_SP(
    P_ACCOUNT_ID => P_ACCOUNT_ID,
    P_ACCOUNT_FIRST_NAME => P_ACCOUNT_FIRST_NAME,
    P_ACCOUNT_LAST_NAME => P_ACCOUNT_LAST_NAME,
    P_ACCOUNT_EMAIL => P_ACCOUNT_EMAIL,
    P_ACCOUNT_PASSWORD => P_ACCOUNT_PASSWORD,
    P_ACCOUNT_MOBILE_PHONE => P_ACCOUNT_MOBILE_PHONE,
    P_ACCOUNT_STREET => P_ACCOUNT_STREET,
    P_ACCOUNT_APARTMENT => P_ACCOUNT_APARTMENT,
    P_ACCOUNT_CITY => P_ACCOUNT_CITY,
    P_ACCOUNT_STATE_PROVINCE => P_ACCOUNT_STATE_PROVINCE,
    P_ACCOUNT_POSTAL_CODE => P_ACCOUNT_POSTAL_CODE
  );
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('P_ACCOUNT_ID = ' || P_ACCOUNT_ID);
*/ 
  :P_ACCOUNT_ID := P_ACCOUNT_ID;
--rollback; 
END;
/*  TEST 2
    PROCEDURE:  BCYCLE3A_PKG.CREATE_ACCOUNT_PP
    EXPECTED RESULT:  Error.  The same account with the same email address is being created.  This procedure should produce the 
    error message 'Duplicate email address (johnnieM@yahooo.com).'
    No new account should be added.
*/

DECLARE
  P_ACCOUNT_ID NUMBER;
  P_ACCOUNT_FIRST_NAME VARCHAR2(200);
  P_ACCOUNT_LAST_NAME VARCHAR2(200);
  P_ACCOUNT_EMAIL VARCHAR2(200);
  P_ACCOUNT_PASSWORD VARCHAR2(200);
  P_ACCOUNT_MOBILE_PHONE VARCHAR2(200);
  P_ACCOUNT_STREET VARCHAR2(200);
  P_ACCOUNT_APARTMENT VARCHAR2(200);
  P_ACCOUNT_CITY VARCHAR2(200);
  P_ACCOUNT_STATE_PROVINCE VARCHAR2(200);
  P_ACCOUNT_POSTAL_CODE VARCHAR2(200);
BEGIN
  P_ACCOUNT_FIRST_NAME := 'Johnnie';
  P_ACCOUNT_LAST_NAME := 'Mowinckel';
  P_ACCOUNT_EMAIL := 'johnnieM@yahooo.com';
  P_ACCOUNT_PASSWORD := 'what is a password';
  P_ACCOUNT_MOBILE_PHONE := '402-777-2231';
  P_ACCOUNT_STREET := '2200 Dodge Street';
  P_ACCOUNT_APARTMENT := NULL;
  P_ACCOUNT_CITY := 'Omaha';
  P_ACCOUNT_STATE_PROVINCE := 'NE';
  P_ACCOUNT_POSTAL_CODE := '68102';

  CREATE_ACCOUNT_SP(
    P_ACCOUNT_ID => P_ACCOUNT_ID,
    P_ACCOUNT_FIRST_NAME => P_ACCOUNT_FIRST_NAME,
    P_ACCOUNT_LAST_NAME => P_ACCOUNT_LAST_NAME,
    P_ACCOUNT_EMAIL => P_ACCOUNT_EMAIL,
    P_ACCOUNT_PASSWORD => P_ACCOUNT_PASSWORD,
    P_ACCOUNT_MOBILE_PHONE => P_ACCOUNT_MOBILE_PHONE,
    P_ACCOUNT_STREET => P_ACCOUNT_STREET,
    P_ACCOUNT_APARTMENT => P_ACCOUNT_APARTMENT,
    P_ACCOUNT_CITY => P_ACCOUNT_CITY,
    P_ACCOUNT_STATE_PROVINCE => P_ACCOUNT_STATE_PROVINCE,
    P_ACCOUNT_POSTAL_CODE => P_ACCOUNT_POSTAL_CODE
  );
--  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('P_ACCOUNT_ID = ' || P_ACCOUNT_ID);
--*/ 
  :P_ACCOUNT_ID := P_ACCOUNT_ID;
--rollback; 
END;
/

/* TEST 3
    PROCEDURE:  BCYCLE3A_PKG.CREATE_ACCOUNT_PP
    EXPECTED RESULT:    Error.  NULL values are entered for mandatory parameters.
        Should produce error message "Missing mandatory value for parameter (first name) in CREATE_ACCOUNT_SP.  No account added."
*/
DECLARE
  P_ACCOUNT_ID NUMBER;
  P_ACCOUNT_FIRST_NAME VARCHAR2(200);
  P_ACCOUNT_LAST_NAME VARCHAR2(200);
  P_ACCOUNT_EMAIL VARCHAR2(200);
  P_ACCOUNT_PASSWORD VARCHAR2(200);
  P_ACCOUNT_MOBILE_PHONE VARCHAR2(200);
  P_ACCOUNT_STREET VARCHAR2(200);
  P_ACCOUNT_APARTMENT VARCHAR2(200);
  P_ACCOUNT_CITY VARCHAR2(200);
  P_ACCOUNT_STATE_PROVINCE VARCHAR2(200);
  P_ACCOUNT_POSTAL_CODE VARCHAR2(200);
BEGIN
  P_ACCOUNT_FIRST_NAME := NULL;
  P_ACCOUNT_LAST_NAME := NULL;
  P_ACCOUNT_EMAIL := NULL;
  P_ACCOUNT_PASSWORD := NULL;
  P_ACCOUNT_MOBILE_PHONE := NULL;
  P_ACCOUNT_STREET := NULL;
  P_ACCOUNT_APARTMENT := NULL;
  P_ACCOUNT_CITY := NULL;
  P_ACCOUNT_STATE_PROVINCE := NULL;
  P_ACCOUNT_POSTAL_CODE := NULL;

  BCYCLE3A_PKG.CREATE_ACCOUNT_PP(
    P_ACCOUNT_ID => P_ACCOUNT_ID,
    P_ACCOUNT_FIRST_NAME => P_ACCOUNT_FIRST_NAME,
    P_ACCOUNT_LAST_NAME => P_ACCOUNT_LAST_NAME,
    P_ACCOUNT_EMAIL => P_ACCOUNT_EMAIL,
    P_ACCOUNT_PASSWORD => P_ACCOUNT_PASSWORD,
    P_ACCOUNT_MOBILE_PHONE => P_ACCOUNT_MOBILE_PHONE,
    P_ACCOUNT_STREET => P_ACCOUNT_STREET,
    P_ACCOUNT_APARTMENT => P_ACCOUNT_APARTMENT,
    P_ACCOUNT_CITY => P_ACCOUNT_CITY,
    P_ACCOUNT_STATE_PROVINCE => P_ACCOUNT_STATE_PROVINCE,
    P_ACCOUNT_POSTAL_CODE => P_ACCOUNT_POSTAL_CODE
  );
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('P_ACCOUNT_ID = ' || P_ACCOUNT_ID);
*/ 
  :P_ACCOUNT_ID := P_ACCOUNT_ID;
--rollback; 
END;
/

/* TEST 4 
    PROCEDURE: BCYCLE3A_PKG.CREATE_STATION_PP
    EXPECTED RESULT:    Success.  The procedure should successfully insert a new row in the BC_STATION table.  

*/

DECLARE
  P_STATION_ID VARCHAR2(200);
  P_STATION_NAME VARCHAR2(200);
  P_STATION_SHORT_NAME VARCHAR2(200);
  P_LATITUDE NUMBER;
  P_LONGITUDE NUMBER;
  P_ADDRESS VARCHAR2(200);
  P_POSTAL_CODE VARCHAR2(200);
  P_CONTACT_PHONE VARCHAR2(200);
  P_CAPACITY NUMBER;
  P_VEHICLES_AVAILABLE NUMBER;
  P_DOCKS_AVAILABLE NUMBER;
  P_IS_RENTING NUMBER;
  P_IS_RETURNING NUMBER;
  P_LAST_REPORT DATE;
  P_PROGRAM_ID VARCHAR2(200);
BEGIN
  P_STATION_ID := 'bcycle_heartland_2432';
  P_STATION_NAME := '1819 Farnam';
  P_STATION_SHORT_NAME := 'City Hall';
  P_LATITUDE := 41.25746;
  P_LONGITUDE := -95.94036;
  P_ADDRESS := '1819 Farnam Street';
  P_POSTAL_CODE := ' 68183';
  P_CONTACT_PHONE := '+1 402-957-2453';
  P_CAPACITY := 11;
  P_VEHICLES_AVAILABLE := 5;
  P_DOCKS_AVAILABLE := 6;
  P_IS_RENTING := 1;
  P_IS_RETURNING := 1;
  P_LAST_REPORT := TO_DATE('22-FEB-2022 22:54:30', 'DD-MON-YYYY HH24:MI:SS');
  P_PROGRAM_ID := 'bcycle_heartland';

  BCYCLE3A_PKG.CREATE_STATION_PP(
    P_STATION_ID => P_STATION_ID,
    P_STATION_NAME => P_STATION_NAME,
    P_STATION_SHORT_NAME => P_STATION_SHORT_NAME,
    P_LATITUDE => P_LATITUDE,
    P_LONGITUDE => P_LONGITUDE,
    P_ADDRESS => P_ADDRESS,
    P_POSTAL_CODE => P_POSTAL_CODE,
    P_CONTACT_PHONE => P_CONTACT_PHONE,
    P_CAPACITY => P_CAPACITY,
    P_VEHICLES_AVAILABLE => P_VEHICLES_AVAILABLE,
    P_DOCKS_AVAILABLE => P_DOCKS_AVAILABLE,
    P_IS_RENTING => P_IS_RENTING,
    P_IS_RETURNING => P_IS_RETURNING,
    P_LAST_REPORT => P_LAST_REPORT,
    P_PROGRAM_ID => P_PROGRAM_ID
  );
--rollback; 
END;

/

/* TEST 5 
    PROCEDURE: BCYCLE3A_PKG.CREATE_STATION_PP
    EXPECTED RESULT:    Error.  The procedure should produce the error message
        "Invalid Program (Heartland B Cycle)." 
        No station should be added to the BC_STATION table.
*/

DECLARE
  P_STATION_ID VARCHAR2(200);
  P_STATION_NAME VARCHAR2(200);
  P_STATION_SHORT_NAME VARCHAR2(200);
  P_LATITUDE NUMBER;
  P_LONGITUDE NUMBER;
  P_ADDRESS VARCHAR2(200);
  P_POSTAL_CODE VARCHAR2(200);
  P_CONTACT_PHONE VARCHAR2(200);
  P_CAPACITY NUMBER;
  P_VEHICLES_AVAILABLE NUMBER;
  P_DOCKS_AVAILABLE NUMBER;
  P_IS_RENTING NUMBER;
  P_IS_RETURNING NUMBER;
  P_LAST_REPORT DATE;
  P_PROGRAM_ID VARCHAR2(200);
BEGIN
  P_STATION_ID := 'bcycle_heartland_2652';
  P_STATION_NAME := '11th and Jackson';
  P_STATION_SHORT_NAME := NULL;
  P_LATITUDE := 41.25431;
  P_LONGITUDE := -95.93036;
  P_ADDRESS := '1085 Jackson Street';
  P_POSTAL_CODE := ' 68102';
  P_CONTACT_PHONE := '+1 402-957-2453';
  P_CAPACITY := 13;
  P_VEHICLES_AVAILABLE := 6;
  P_DOCKS_AVAILABLE := 7;
  P_IS_RENTING := 1;
  P_IS_RETURNING := 1;
  P_LAST_REPORT := TO_DATE('22-FEB-2022 23:02:40', 'DD-MON-YYYY HH24:MI:SS');
  P_PROGRAM_ID := 'Heartland B Cycle';

  BCYCLE3A_PKG.CREATE_STATION_PP(
    P_STATION_ID => P_STATION_ID,
    P_STATION_NAME => P_STATION_NAME,
    P_STATION_SHORT_NAME => P_STATION_SHORT_NAME,
    P_LATITUDE => P_LATITUDE,
    P_LONGITUDE => P_LONGITUDE,
    P_ADDRESS => P_ADDRESS,
    P_POSTAL_CODE => P_POSTAL_CODE,
    P_CONTACT_PHONE => P_CONTACT_PHONE,
    P_CAPACITY => P_CAPACITY,
    P_VEHICLES_AVAILABLE => P_VEHICLES_AVAILABLE,
    P_DOCKS_AVAILABLE => P_DOCKS_AVAILABLE,
    P_IS_RENTING => P_IS_RENTING,
    P_IS_RETURNING => P_IS_RETURNING,
    P_LAST_REPORT => P_LAST_REPORT,
    P_PROGRAM_ID => P_PROGRAM_ID
  );
--rollback; 
END;

/


