-- ============================================================‚=================
-- Script      : create_basis_schema.sql
-- Beschreibung: Erstellt ein Oracle 19c Schema
-- Ausfuehrung  : sqlplus sys/<passwort>@<service> as sysdba @create_schema.sql
-- =============================================================================

SET ECHO ON
SET FEEDBACK ON
SET VERIFY OFF
SET SERVEROUTPUT ON

PROMPT ===========================================
PROMPT Oracle 19c Schema wird angelegt...
PROMPT ===========================================

-- Parameter
DEFINE SCHEMA_NAME = keepass
DEFINE SCHEMA_PASSWORD = keepass
DEFINE DEFAULT_TABLESPACE = USERS
DEFINE TEMP_TABLESPACE = TEMP

PROMPT Benutzer &&SCHEMA_NAME wird angelegt...

CREATE USER &&SCHEMA_NAME
IDENTIFIED BY "&&SCHEMA_PASSWORD"
DEFAULT TABLESPACE &&DEFAULT_TABLESPACE
TEMPORARY TABLESPACE &&TEMP_TABLESPACE
QUOTA UNLIMITED ON &&DEFAULT_TABLESPACE;

PROMPT Berechtigungen werden vergeben...

GRANT CREATE SESSION TO &&SCHEMA_NAME;
GRANT CREATE TABLE TO &&SCHEMA_NAME;
GRANT CREATE VIEW TO &&SCHEMA_NAME;
GRANT CREATE SEQUENCE TO &&SCHEMA_NAME;
GRANT CREATE PROCEDURE TO &&SCHEMA_NAME;
GRANT CREATE TRIGGER TO &&SCHEMA_NAME;
GRANT CREATE TYPE TO &&SCHEMA_NAME;
GRANT CREATE SYNONYM TO &&SCHEMA_NAME;

PROMPT ===========================================
PROMPT Schema &&SCHEMA_NAME wurde erfolgreich angelegt.
PROMPT ===========================================

EXIT SUCCESS