CREATE TABLE Bruker (
    Bruker_ID           SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Navn                VARCHAR(50)     NOT NULL,
    Mail                VARCHAR(320)    NOT NULL,
    Mobilnummer         NUMBER(15)      NOT NULL,
    Adresse             VARCHAR(46)     NOT NULL,
    Postnummer          NUMBER(5)       NOT NULL,

    CONSTRAINT bruker_pk PRIMARY KEY (Bruker_ID)
);

CREATE TABLE Transaksjon (
    Transaksjon_ID      SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Bruker_ID           SMALLINT,
    Sykkel_ID           SMALLINT,
    Medlemskap_ID       SMALLINT,

    CONSTRAINT transaksjon_pk   PRIMARY KEY (Transaksjon_ID),
    CONSTRAINT brukerid_fk      FOREIGN KEY (Bruker_ID)         REFERENCES Bruker (Bruker_ID),
    CONSTRAINT sykkelid_fk      FOREIGN KEY (Sykkel_ID)         REFERENCES Sykkel (Sykkel_ID),
    CONSTRAINT medlemskap_fk    FOREIGN KEY (Medlemskap_ID)     REFERENCES Medlemskap (Medlemskap_ID)
);

CREATE TABLE Sykkel_Type (
    Sykkel_Type_ID      SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    TYPE                VARCHAR(30),

    CONSTRAINT sykkeltype_pk    PRIMARY KEY (Sykkel_Type_ID)
);

CREATE TABLE Medlemskap (
    Medlemskap_ID       SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Bruker_ID           SMALLINT,
    Medlemsstatus       VARCHAR(50),
    Medlemstype         VARCHAR(50),
    Medlemskap_Aktiv    NUMBER(1),
    Kjops_Dato          DATE,
    Utlops_Dato         DATE,

    CONSTRAINT medlemskap_pk    PRIMARY KEY (Medlemskap_ID),
    CONSTRAINT brukerid_fk      FOREIGN KEY (Bruker_ID)         REFERENCES Bruker (Bruker_ID)
);

CREATE TABLE Tur (
    Tur_ID              SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Start_Stasjon_ID    SMALLINT,
    Slutt_Stasjon_ID    SMALLINT,
    Start_Tid           TIMESTAMP,
    Slutt_Tid           TIMESTAMP,
    Total_Distanse      SMALLINT,
    Medgatt_Tid         TIMESTAMP,
    Totalkostnad        SMALLINT
)