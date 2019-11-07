-- Generated by Oracle SQL Developer Data Modeler 19.2.0.182.1216
--   at:        2019-11-07 14:05:28 CET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE dodavatel (
    id_dodavatele      INTEGER NOT NULL,
    jmeno_dodavatele   VARCHAR2(4000) NOT NULL,
    dic                VARCHAR2(4000) NOT NULL
);

ALTER TABLE dodavatel ADD CONSTRAINT dodavatel_pk PRIMARY KEY ( id_dodavatele );

CREATE TABLE konto (
    id_konta                INTEGER NOT NULL,
    stav_konta              INTEGER NOT NULL,
    datum_vytvoreni         DATE NOT NULL,
    je_aktivni              CHAR(1) NOT NULL,
    stravnik_id_stravnika   INTEGER NOT NULL
);

ALTER TABLE konto ADD CONSTRAINT konto_pk PRIMARY KEY ( id_konta );

CREATE TABLE nakup (
    id_nakupu        INTEGER NOT NULL,
    datum_nakupu     DATE NOT NULL,
    konto_id_konta   INTEGER NOT NULL
);

ALTER TABLE nakup ADD CONSTRAINT nakup_pk PRIMARY KEY ( id_nakupu );

CREATE TABLE nakup_zbozi (
    nakup_id_nakupu   INTEGER NOT NULL,
    zbozi_id_zbozi    INTEGER NOT NULL,
    mnostvi           INTEGER NOT NULL
);

ALTER TABLE nakup_zbozi ADD CONSTRAINT nakup_zbozi_pk PRIMARY KEY ( nakup_id_nakupu,
                                                                    zbozi_id_zbozi );

CREATE TABLE stravnik (
    id_stravnika   INTEGER NOT NULL,
    jmeno          VARCHAR2(4000) NOT NULL,
    prijmeni       VARCHAR2(4000) NOT NULL
);

ALTER TABLE stravnik ADD CONSTRAINT stravnik_pk PRIMARY KEY ( id_stravnika );

CREATE TABLE zbozi (
    id_zbozi                  INTEGER NOT NULL,
    nazev_zbozi               VARCHAR2(4000) NOT NULL,
    cena_zbozi                INTEGER NOT NULL,
    dodavatel_id_dodavatele   INTEGER NOT NULL
);

ALTER TABLE zbozi ADD CONSTRAINT zbozi_pk PRIMARY KEY ( id_zbozi );

ALTER TABLE konto
    ADD CONSTRAINT konto_stravnik_fk FOREIGN KEY ( stravnik_id_stravnika )
        REFERENCES stravnik ( id_stravnika );

ALTER TABLE nakup
    ADD CONSTRAINT nakup_konto_fk FOREIGN KEY ( konto_id_konta )
        REFERENCES konto ( id_konta );

ALTER TABLE nakup_zbozi
    ADD CONSTRAINT nakup_zbozi_nakup_fk FOREIGN KEY ( nakup_id_nakupu )
        REFERENCES nakup ( id_nakupu )
            ON DELETE CASCADE;

ALTER TABLE nakup_zbozi
    ADD CONSTRAINT nakup_zbozi_zbozi_fk FOREIGN KEY ( zbozi_id_zbozi )
        REFERENCES zbozi ( id_zbozi )
            ON DELETE CASCADE;

ALTER TABLE zbozi
    ADD CONSTRAINT zbozi_dodavatel_fk FOREIGN KEY ( dodavatel_id_dodavatele )
        REFERENCES dodavatel ( id_dodavatele );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             11
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0