SELECT * FROM dba_data_files;

CREATE TABLESPACE gossip64K
datafile '/u01/app/oracle/oradata/WOLCOTTDB/gossip64K.dbf' 
SIZE 256K AUTOEXTEND ON
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 64K
SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE gossip128K
datafile '/u01/app/oracle/oradata/WOLCOTTDB/gossip128K.dbf' 
SIZE 512K AUTOEXTEND ON
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 128K
SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE gossip32M
datafile '/u01/app/oracle/oradata/WOLCOTTDB/gossip32M.dbf' 
SIZE 64M AUTOEXTEND ON
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4M
SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE gossip64M
datafile '/u01/app/oracle/oradata/WOLCOTTDB/gossip64M.dbf' 
SIZE 64M AUTOEXTEND ON
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4M
SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE gossip8192M
datafile '/u01/app/oracle/oradata/WOLCOTTDB/gossip8192M.dbf' 
SIZE 100M AUTOEXTEND ON
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4M
SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE gossip16384M
datafile '/u01/app/oracle/oradata/WOLCOTTDB/gossip16384M.dbf' 
SIZE 100M AUTOEXTEND ON
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4M
SEGMENT SPACE MANAGEMENT AUTO;


ALTER USER XOXOGOSSIP QUOTA 250M ON gossip64K;

ALTER USER XOXOGOSSIP QUOTA 250M ON gossip128K;

ALTER USER XOXOGOSSIP QUOTA 250M ON gossip32M;

ALTER USER XOXOGOSSIP QUOTA 250M ON gossip64M;

ALTER USER XOXOGOSSIP QUOTA 250M ON gossip8192M;

ALTER USER XOXOGOSSIP QUOTA 250M ON gossip16384M;


ALTER TABLE BC_ACCOUNT MOVE 
PCTFREE 5 
STORAGE(INITIAL 16M NEXT 4M) 
TABLESPACE gossip64M;

ALTER TABLE BC_BICYCLE MOVE 
PCTFREE 0 
STORAGE(INITIAL 13M NEXT 128K) 
TABLESPACE gossip128K;

ALTER TABLE BC_BICYCLE_STATUS MOVE 
PCTFREE 5 
STORAGE(INITIAL 16M NEXT 4M) 
TABLESPACE gossip16384M;

/* What to do here? Just included it in because nothing about this table was said in the assignment.
ALTER TABLE BC_COUNTRY MOVE 
PCTFREE 0 
STORAGE(INITIAL 0000000000 NEXT 0000000000) 
TABLESPACE 0000000000;
*/

ALTER TABLE BC_DOCK MOVE 
PCTFREE 0 
STORAGE(INITIAL 10M NEXT 128K) 
TABLESPACE gossip128K;

ALTER TABLE BC_MEMBERSHIP MOVE 
PCTFREE 5 
STORAGE(INITIAL 16M NEXT 4M) 
TABLESPACE gossip32M;

ALTER TABLE BC_PASS MOVE 
PCTFREE 0 STORAGE(INITIAL 384K NEXT 64K) 
TABLESPACE gossip64K;

ALTER TABLE BC_PROGRAM MOVE 
PCTFREE 0 
STORAGE(INITIAL 128K NEXT 64K) 
TABLESPACE gossip64K;

ALTER TABLE BC_STATION MOVE 
PCTFREE 5 
STORAGE(INITIAL 5M NEXT 64K) 
TABLESPACE gossip64K;

ALTER TABLE BC_TRIP MOVE 
PCTFREE 10 
STORAGE(INITIAL 16M NEXT 4M) 
TABLESPACE gossip8192M;

ALTER INDEX XPASS_PK REBUILD TABLESPACE INDX;

ALTER INDEX MEMBERSHIP_PK REBUILD TABLESPACE INDX;

ALTER INDEX TRIP_PK REBUILD TABLESPACE INDX;

ALTER INDEX BICYCLE_STATUS_PK REBUILD TABLESPACE INDX;

ALTER INDEX ACCOUNT_EMAIL_UN REBUILD TABLESPACE INDX;

ALTER INDEX COUNTRY_PK REBUILD TABLESPACE INDX;

ALTER INDEX BICYCLE_PK REBUILD TABLESPACE INDX;

ALTER INDEX DOCK__IDX REBUILD TABLESPACE INDX;

ALTER INDEX ACCOUNT_PK REBUILD TABLESPACE INDX;

ALTER INDEX DOCK_PK REBUILD TABLESPACE INDX;

ALTER INDEX STATION_PK REBUILD TABLESPACE INDX;

CREATE ROLE read_priv_xoxo IDENTIFIED BY XOXOREADONLY;
GRANT CREATE SESSION TO read_priv_xoxo;
GRANT SELECT ON BC_ACCOUNT TO read_priv_xoxo;
GRANT SELECT ON BC_BICYCLE TO read_priv_xoxo;
GRANT SELECT ON BC_BICYCLE_STATUS TO read_priv_xoxo;
GRANT SELECT ON BC_COUNTRY TO read_priv_xoxo;
GRANT SELECT ON BC_DOCK TO read_priv_xoxo;
GRANT SELECT ON BC_MEMBERSHIP TO read_priv_xoxo;
GRANT SELECT ON BC_PASS TO read_priv_xoxo;
GRANT SELECT ON BC_PROGRAM TO read_priv_xoxo;
GRANT SELECT ON BC_STATION TO read_priv_xoxo;
GRANT SELECT ON BC_TRIP TO read_priv_xoxo;

CREATE ROLE pkgadmin_xoxo IDENTIFIED BY XOXOADMIN;
GRANT CREATE SESSION TO pkgadmin_xoxo;
GRANT EXECUTE ON BCYCLE3B_PKG TO pkgadmin_xoxo;

CREATE ROLE account_xoxo IDENTIFIED BY XOXOACCOUNT;
GRANT CREATE SESSION TO account_xoxo;
GRANT EXECUTE ON CREATE_ACCOUNT_SP TO account_xoxo;
GRANT EXECUTE ON PURCHASE_MEMBERSHIP_SP TO account_xoxo;
GRANT EXECUTE ON BEGIN_TRIP_SP TO account_xoxo; 
GRANT EXECUTE ON END_TRIP_SP TO account_xoxo; -- To end the trip, this is needed.

CREATE ROLE pkgnew_xoxo IDENTIFIED BY XOXONEWTHINGS;
GRANT CREATE SESSION TO pkgnew_xoxo;
GRANT EXECUTE ON BEGIN_TRIP_PP TO pkgnew_xoxo;
GRANT EXECUTE ON CREATE_ACCOUNT_PP TO pkgnew_xoxo;
GRANT EXECUTE ON END_TRIP_PP TO pkgnew_xoxo; -- To end the trip, this is needed.
GRANT EXECUTE ON PURCHASE_MEMBERSHIP_PP TO pkgnew_xoxo;


CREATE PROFILE GOSSIPGANG_PROFILE LIMIT
    SESSIONS_PER_USER 5
    CPU_PER_SESSION 360000
    CONNECT_TIME 180
    IDLE_TIME 5;

CREATE USER GossipMember_1 
    IDENTIFIED BY GOSSIPSQUAD
    PROFILE GOSSIPGANG_PROFILE
    DEFAULT TABLESPACE USERS
    QUOTA 0M ON USERS;

CREATE USER GossipMember_2
    IDENTIFIED BY GOSSIPSQUAD
    PROFILE GOSSIPGANG_PROFILE
    DEFAULT TABLESPACE USERS
    QUOTA 250M ON USERS;    

GRANT read_priv_xoxo TO GossipMember_1 IDENTIFIED BY XOXOREADONLY;
GRANT pkgadmin_xoxo TO GossipMember_2 IDENTIFIED BY XOXOADMIN;

SELECT * FROM USER_TABLE;
SELECT * FROM USER_INDEXES;








