-- ===================================================================================
-- Script      : create_table_allg_servicerecht.sql
-- Beschreibung: Erstellt eine Tabelle ALLG_SERVICERECHT
-- Ausfuehrung  : sqlplus benutzer/passwort@BASISDB @create_table_allg_servicerecht.sql
-- ====================================================================================

-- create_table_allg_servicerecht.sql

SET ECHO ON
SET FEEDBACK ON

CREATE TABLE ALLG_SERVICERECHT (
    ABRUFBISPROTOKOLLID     NUMBER(19,0),
    EMPFANGBISPROTOKOLLID   NUMBER(19,0),
    ENTITY_TIMESTAMP        TIMESTAMP(9)        NOT NULL,
    ID                      NUMBER(19,0)        NOT NULL,
    JVA                     NUMBER(19,0)        NOT NULL,
    OPTLOCKVERSION          NUMBER(19,0)        NOT NULL,
    PROPERTIES              VARCHAR2(4000 CHAR),
    ROLE                    VARCHAR2(4000 CHAR),
    SERVICEUSEREB_ID        NUMBER(19,0),
    SERVICEUSEREB_JVA       NUMBER(19,0),
    CONSTRAINT PK_ALLG_SERVICERECHT PRIMARY KEY (ABRUFBISPROTOKOLLID)
);

COMMENT ON TABLE ALLG_SERVICERECHT IS 'Allgemeines Servicerecht';

COMMIT;