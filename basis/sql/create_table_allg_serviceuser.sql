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
    ANZEIGENAME         NVARCHAR2(4000 CHAR),
    ENTITY_TIMESTAMP    TIMESTAMP(9),
    EXPIRES             DATE,
    ID                  NUMBER(19,0)            NOT NULL,
    JVA                 NUMBER(19,0)            NOT NULL,
    OPTLOCKVERSION      NUMBER(19,0)            NOT NULL,
    PASSWORD            NVARCHAR2(4000 CHAR),
    PROPERTIES          NVARCHAR2(4000 CHAR),
    RSAWEBKEY           NVARCHAR2(4000 CHAR),
    TOKEN               NVARCHAR2(4000 CHAR),
    USERNAME            NVARCHAR2(4000 CHAR),
    USERTYPE            NVARCHAR2(4000 CHAR),
    CONSTRAINT PK_ALLG_SERVICEUSER PRIMARY KEY (ACTIVE)
);

COMMENT ON TABLE ALLG_SERVICEUSER IS 'Allgemeiner Serviceuser';

COMMIT;