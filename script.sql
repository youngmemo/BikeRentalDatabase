DROP TABLE Bruker;
DROP TABLE Program;
DROP TABLE Stasjon;
DROP TABLE Sykkel;
DROP TABLE Sykkel_Type;
DROP TABLE Stasjon_Status;
DROP TABLE Tur;
DROP TABLE Sykkel_Status;
DROP TABLE Transaksjon;
DROP TABLE Medlemskap;

CREATE TABLE Bruker (

    Bruker_ID           SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Navn                VARCHAR2(50)   NOT NULL,
    Mail                VARCHAR2(320)  NOT NULL,
    Mobilnummer         NUMBER(15)     NOT NULL,
    Adresse             VARCHAR(46)    NOT NULL,
    Postnummer          NUMBER(5)      NOT NULL,

    CONSTRAINT bruker_pk        PRIMARY KEY (Bruker_ID)
);

CREATE TABLE Program (

    Program_ID      SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Land            VARCHAR2(50)        NOT NULL,
    Sted            VARCHAR2(50)        NOT NULL,
    Alias           VARCHAR2(5),
    Navn            VARCHAR2(50)        NOT NULL,
    Telefonnummer   NUMBER(15)          NOT NULL,
    Tidssone        VARCHAR2(20)        NOT NULL,
    URL             VARCHAR2(500),
    Mail            VARCHAR2(320)       NOT NULL ,

    CONSTRAINT program_pk       PRIMARY KEY (Program_ID)

);

CREATE TABLE Stasjon (

    Stasjon_ID          SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Program_ID          SMALLINT       NOT NULL,
    Adresse             VARCHAR2(46)   NOT NULL,
    Navn                VARCHAR2(50)   NOT NULL,
    Breddegrad          FLOAT          NOT NULL,
    Lengdegrad          FLOAT          NOT NULL,
    Kapasitet           SMALLINT       NOT NULL,
    Alias               VARCHAR2(5),
    Postnummer          SMALLINT       NOT NULL,

    CONSTRAINT stasjon_pk       PRIMARY KEY (Stasjon_ID),
    CONSTRAINT program_fk       FOREIGN KEY (Program_ID) REFERENCES Program (Program_ID)
);

CREATE TABLE Sykkel_Type (

    Sykkel_Type_ID              SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Type                        VARCHAR (30) NOT NULL,

    CONSTRAINT Syksykkeltype_pk PRIMARY KEY (Sykkel_Type_ID)

);

CREATE TABLE Sykkel (

     Sykkel_ID         INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
     Sykkel_Type_ID    INT             NOT NULL,
     Storrelse         VARCHAR2(30)    NOT NULL,
     Make              VARCHAR2(30)    NOT NULL,
     Model             VARCHAR2(30)    NOT NULL,
     Farge             VARCHAR2(30)    NOT NULL,
     Ar_Anskaffet      INT             NOT NULL,

     CONSTRAINT sykkel_pk       PRIMARY KEY (Sykkel_ID),
     CONSTRAINT sykkeltype_fk   FOREIGN KEY (Sykkel_Type_ID) REFERENCES Sykkel_Type (Sykkel_Type_ID)

);

CREATE TABLE Stasjon_Status (

    Stasjon_Status_ID       INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Stasjon_ID              SMALLINT    NOT NULL ,
    Sykkel_ID               SMALLINT,
    Port_ID                 SMALLINT    NOT NULL,
    Aksepterer              NUMBER(1)   NOT NULL ,
    Tid_Data_Sendt          TIMESTAMP,

    CONSTRAINT stasjonstatus_pk     PRIMARY KEY (Stasjon_Status_ID),
    CONSTRAINT stasjon_fk           FOREIGN KEY (Stasjon_ID)         REFERENCES Stasjon (Stasjon_ID),
    CONSTRAINT stasjonsykkel_fk     FOREIGN KEY (Sykkel_ID)          REFERENCES Sykkel (Sykkel_ID)

);

CREATE TABLE Tur (

    Tur_ID                  INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Start_Stasjon_ID        SMALLINT    NOT NULL,
    Slutt_Stasjon_ID        SMALLINT,
    Start_Tid               TIMESTAMP   NOT NULL,
    Slutt_Tid               TIMESTAMP,
    Total_Distanse          SMALLINT,

    CONSTRAINT tur_pk               PRIMARY KEY (Tur_ID),
    CONSTRAINT startstasjon_fk      FOREIGN KEY (Start_Stasjon_ID)      REFERENCES Stasjon (Stasjon_ID),
    CONSTRAINT sluttstasjon_fk      FOREIGN KEY (Slutt_Stasjon_ID)      REFERENCES Stasjon (Stasjon_ID)
);

CREATE TABLE Medlemskap (
    Medlemskap_ID     SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Bruker_ID         INT         NOT NULL,
    Medlemstatus      NUMBER(1)   NOT NULL,
    Medlemstype       VARCHAR(50) NOT NULL,
    Kjops_Dato        DATE,
    Utlops_Dato       DATE,

    CONSTRAINT medlemskap_pk  PRIMARY KEY (Medlemskap_ID),
    CONSTRAINT bruker_fk FOREIGN KEY (Bruker_ID) REFERENCES Bruker (Bruker_ID)
);

CREATE TABLE Transaksjon (

    Transaksjon_ID    INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Bruker_ID         INT   NOT NULL,
    Tur_ID            INT   NOT NULL,
    Sykkel_ID         INT   NOT NULL,
    Medlemskap_ID     INT   NOT NULL,
    Total_Kostnad     SMALLINT NOT NULL,
    CONSTRAINT transaksjon_pk   PRIMARY KEY (Transaksjon_ID),
    CONSTRAINT turid_fk         FOREIGN KEY (Tur_ID)    REFERENCES Tur (Tur_ID),
    CONSTRAINT brukerid_fk      FOREIGN KEY (Bruker_ID) REFERENCES Bruker (Bruker_ID),
    CONSTRAINT sykkelid_fk      FOREIGN KEY (Sykkel_ID) REFERENCES Sykkel (Sykkel_ID),
    CONSTRAINT medlemskap_fk    FOREIGN KEY (Medlemskap_ID) REFERENCES Medlemskap (Medlemskap_ID)
);

CREATE TABLE Sykkel_Status (

    Sykkel_Status_ID        INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Sykkel_ID               INT     NOT NULL,
    Sykkel_Tilgjengelig     NUMBER(1) NOT NULL,
    Tur_ID                  INT,
    Breddegrad              FLOAT     NOT NULL,
    Lengdegrad              FLOAT     NOT NULL,
    Strom                   NUMBER(3),

    CONSTRAINT sykkelstatus_pk PRIMARY KEY (Sykkel_Status_ID),
    CONSTRAINT sykkel_fk        FOREIGN KEY (Sykkel_ID) REFERENCES Sykkel (Sykkel_ID),
    CONSTRAINT tur_fk           FOREIGN KEY (Tur_ID) REFERENCES Tur (Tur_ID)

);


-- HER SETTER VI INN TESTDATA TIL TABLES.

-- Legger inn testdata til tabellen 'Bruker'.
INSERT INTO Bruker (Navn, Mail, Mobilnummer, Adresse, Postnummer)
VALUES ('Mariam','zna@hotmail.no',45434737, 'Blørstadkollen 25', 4626);

INSERT INTO Bruker (Navn, Mail, Mobilnummer, Adresse, Postnummer)
VALUES ('Mehmet','mehmeteksi99@hotmail.com',98460882,'Løvsangerveien 28A',4626);

INSERT INTO Bruker (Navn, Mail, Mobilnummer, Adresse, Postnummer)
VALUES ('Abdul','Abdul-Rahman-Kasim@hotmail.com', 41384997,'Slettheitoppen 59', 4626);




-- Legger inn testdata til tabellen 'Program'.
INSERT INTO Program (Land, Sted, Alias, Navn, Telefonnummer, Tidssone, URL, Mail)
VALUES ('NO','Kristiansand','KRS','Sørlandssyklene', 41624571,'GMT+1', 'SørlandsBcycle.no','Sørlandet@Bcycle.com');

INSERT INTO Program (Land, Sted, Alias, Navn, Telefonnummer, Tidssone, URL, Mail)
VALUES ('NO', 'Oslo', 'OSL', 'oslocycle', 45434737, 'GMT+1', 'bcycle.oslo.com', 'Oslocycle@bcycle.com');

INSERT INTO Program (Land, Sted, Alias, Navn, Telefonnummer, Tidssone, URL, Mail)
VALUES ('NO', 'Trondheim','TRH','trondheimsykkel', 3857229, 'GMT+1','bcycle.trondheim.com','trondheim@bcycle.com');





-- Legger inn testdata til tabellen 'Stasjon'.
INSERT INTO Stasjon (Program_ID, Adresse, Navn, Breddegrad, Lengdegrad, Kapasitet, Alias, Postnummer)
VALUES (1,'Tollbodgata 16','KrsOne', 13.56473,87.57685, 8, 'K1', 4620);

INSERT INTO Stasjon (Program_ID, Adresse, Navn, Breddegrad, Lengdegrad, Kapasitet, Alias, Postnummer)
VALUES (2, 'Oslo S', 'OSL0ne', 59.9138, 10.7387, 10, 'O1', 0010);

INSERT INTO Stasjon (Program_ID, Adresse, Navn, Breddegrad, Lengdegrad, Kapasitet, Alias, Postnummer)
VALUES (3,'Trondheimsveien 28', 'TrondheimOne',12.34567, 76.54321, 8,'T1',5678);

INSERT INTO Stasjon (Program_ID, Adresse, Navn, Breddegrad, Lengdegrad, Kapasitet, Alias, Postnummer)
VALUES (1,'Kongensgate 12','KrsTwo', 15.76543,97.76543, 8, 'K2', 4628);

INSERT INTO Stasjon (Program_ID, Adresse, Navn, Breddegrad, Lengdegrad, Kapasitet, Alias, Postnummer)
VALUES (2, 'Grunnerløkka 10', 'OSLTwo', 60.4567, 20.432, 9, '01', 0035);

INSERT INTO Stasjon (Program_ID, Adresse, Navn, Breddegrad, Lengdegrad, Kapasitet, Alias, Postnummer)
VALUES (3,'Hundegata 52', 'TrondheimTwo',14.21367,42.21321,8,'T2', 1823);






-- Legger inn testdata til tabellen 'Sykkel_Type'.
INSERT INTO Sykkel_Type (Type)
VALUES ('Electric');

INSERT INTO Sykkel_Type (Type)
VALUES('Smart');

INSERT INTO Sykkel_Type (Type)
VALUES('Cargo');





-- Legger inn testdata til tabellen 'Sykkel'.
INSERT INTO Sykkel (Sykkel_Type_ID, Storrelse, Make, Model, Farge, Ar_Anskaffet)
VALUES (1, 'Small', 'SPE', 'SPE-786', 'Blå', 2015);

INSERT INTO Sykkel (Sykkel_Type_ID, Storrelse, Make, Model, Farge, Ar_Anskaffet)
VALUES (2, 'Medium', 'ASO', 'ASO-657', 'Grønn', 2015 );

INSERT INTO Sykkel (Sykkel_Type_ID, Storrelse, Make, Model, Farge, Ar_Anskaffet)
VALUES (3, 'Large', 'DBS', 'DBS-0001', 'Svart', 2015);




-- Legger inn testdata til tabellen 'Stasjon_Status'.
INSERT INTO Stasjon_Status (Stasjon_ID, Sykkel_ID, Port_ID, Aksepterer, Tid_Data_Sendt)
VALUES (3, 3, 1, 0, CURRENT_TIMESTAMP);

INSERT INTO Stasjon_Status (Stasjon_ID, Sykkel_ID, Port_ID, Aksepterer, Tid_Data_Sendt)
VALUES (1, 1, 2, 0, CURRENT_TIMESTAMP);

INSERT INTO Stasjon_Status (Stasjon_ID, Sykkel_ID, Port_ID, Aksepterer, Tid_Data_Sendt)
VALUES (2, 2, 3, 1, CURRENT_TIMESTAMP);





-- Legger inn testdata til tabellen 'Tur'.
INSERT INTO Tur (Start_Stasjon_ID, Slutt_Stasjon_ID, Start_Tid, Slutt_Tid, Total_Distanse)
VALUES (1, 4, TO_DATE('23-04-20 17:18:07','DD-MM-YY HH24:MI:SS'), TO_DATE('03-03-20 22:18:07','DD-MM-YY HH24:MI:SS'), 20);

INSERT INTO Tur (Start_Stasjon_ID, Slutt_Stasjon_ID, Start_Tid, Slutt_Tid, Total_Distanse)
VALUES (2, 5, TO_DATE('05-04-20 19:18:07','DD-MM-YY HH24:MI:SS'), TO_DATE('05-04-20 23:18:07','DD-MM-YY HH24:MI:SS'), 10);

INSERT INTO Tur (Start_Stasjon_ID, Slutt_Stasjon_ID, Start_Tid, Slutt_Tid, Total_Distanse)
VALUES (3, 6, TO_DATE('01-01-20 20:18:07','DD-MM-YY HH24:MI:SS'), TO_DATE('01-01-20 21:18:07','DD-MM-YY HH24:MI:SS'), 30);


-- Legger inn testdata til tabellen 'Medlemskap'.
INSERT INTO Medlemskap (Bruker_ID, Medlemstatus, Medlemstype, Kjops_Dato, Utlops_Dato)
VALUES (1, 1,'Månedlig','01-JAN-2020','01-FEB-2020');

INSERT INTO Medlemskap (Bruker_ID, Medlemstatus, Medlemstype, Kjops_Dato, Utlops_Dato)
VALUES (2, 1, 'Årlig','01-JAN-2020', '01-JAN-2020');





-- Legger inn testdata til tabellen 'Transaksjon'.
INSERT INTO Transaksjon (Bruker_ID, Tur_ID, Sykkel_ID, Medlemskap_ID, Total_Kostnad)
VALUES (1, 3, 3, 1, 0);

INSERT INTO Transaksjon (Bruker_ID, Tur_ID, Sykkel_ID, Medlemskap_ID, Total_Kostnad)
VALUES (2, 3, 3, 2, 0);





-- Legger inn testdata til tabellen 'Sykkel_Status'.
INSERT INTO Sykkel_Status (Sykkel_ID, Sykkel_Tilgjengelig, Breddegrad, Lengdegrad, Strom)
VALUES (1, 1, 15.28371, 82.18237, 100);

INSERT INTO Sykkel_Status (Sykkel_ID, Sykkel_Tilgjengelig, Breddegrad, Lengdegrad)
VALUES (2, 1, 10.25845, 12.48596);

commit;