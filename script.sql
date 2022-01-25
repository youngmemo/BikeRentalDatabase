CREATE TABLE Bruker
(
    Bruker_ID           SMALLINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    Navn                VARCHAR(50)     NOT NULL,
    Mail                VARCHAR(320)    NOT NULL,
    Mobilnummer         NUMBER(15)      NOT NULL,
    Adresse             VARCHAR(46)     NOT NULL,
    Postnummer          NUMBER(5)       NOT NULL
);

ALTER TABLE Bruker ADD (
    CONSTRAINT bruker_pk PRIMARY KEY (Bruker_ID)
);

