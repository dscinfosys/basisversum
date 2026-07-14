-- ==================================================================================
-- Script      : create_table_allg_serviceuser.sql
-- Beschreibung: Erstellt eine Tabelle ALLG_SERVICEUSER
-- Ausfuehrung  : sqlplus benutzer/passwort@BASISDB @create_table_allg_serviceuser.sql
-- ===================================================================================

-- create_table_allg_serviceuser.sql

SET ECHO ON
SET FEEDBACK ON

CREATE TABLE ALLG_SERVICEUSER (
    ACTIVE              NUMBER(10)              NOT NULL,
    ANZEIGENAME         VARCHAR2(4000 CHAR),
    ENTITY_TIMESTAMP    TIMESTAMP(9),
    EXPIRES             DATE,
    ID                  NUMBER(19,0)            NOT NULL,
    JVA                 NUMBER(19,0)            NOT NULL,
    OPTLOCKVERSION      NUMBER(19,0)            NOT NULL,
    PASSWORD            VARCHAR2(4000 CHAR),
    PROPERTIES          VARCHAR2(4000 CHAR),
    RSAWEBKEY           VARCHAR2(4000 CHAR),
    TOKEN               VARCHAR2(4000 CHAR),
    USERNAME            VARCHAR2(4000 CHAR),
    USERTYPE            VARCHAR2(4000 CHAR),
    CONSTRAINT PK_ALLG_SERVICEUSER PRIMARY KEY (ACTIVE)
);

COMMENT ON TABLE ALLG_SERVICEUSER IS 'Allgemeiner Serviceuser';

COMMIT;