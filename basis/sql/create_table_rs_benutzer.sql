-- ==================================================================================
-- Script      : create_table_allg_serviceuser.sql
-- Beschreibung: Erstellt eine Tabelle ALLG_SERVICEUSER
-- Ausfuehrung  : sqlplus benutzer/passwort@BASISDB @create_table_rs_benutzer.sql
-- ===================================================================================

-- create_table_rs_benutzer.sql

SET ECHO ON
SET FEEDBACK ON

CREATE TABLE RS_BENUTZER (
    AENDERUNGSDATUM             DATE,
    AKTIV                       NUMBER(1,0),
    ANGEMELDET                  NUMBER(1,0),
    ANGEMELDETAN                VARCHAR2(4000 CHAR),
    ANMELDEDATUM                DATE,
    AUTOMATISCHGESPERRT         NUMBER(1,0),
    BEENDET                     NUMBER(1,0),
    BEHOERDE                    VARCHAR2(4000 CHAR),
    CHANGEPASSWORD              NUMBER(1,0)             NOT NULL,
    EMAILADRESS                 VARCHAR2(4000 CHAR),
    ENTITY_TIMESTAMP            TIMESTAMP(9),
    ID                          NUMBER(19,0)            NOT NULL,
    JVA                         NUMBER(19,0)            NOT NULL,
    KENNWORT                    VARCHAR2(4000 CHAR),
    NAME                        VARCHAR2(4000 CHAR),
    OPTLOCKVERSION              NUMBER(19,0)            NOT NULL,
    PASSWORD                    VARCHAR2(4000 CHAR),
    PASSWORDZULETZTGEAENDERT    DATE,
    PROPERTIES                  VARCHAR2(4000 CHAR),
    RUFNUMMER                   VARCHAR2(4000 CHAR),
    ZUGRIFFSTYP                 VARCHAR2(1 CHAR),
    ZUSATZ_RECHTE               VARCHAR2(4000 CHAR),
    CONSTRAINT PK_RS_BENUTZER PRIMARY KEY (ID)
);

COMMENT ON TABLE RS_BENUTZER IS 'RS Benutzer';

COMMIT;