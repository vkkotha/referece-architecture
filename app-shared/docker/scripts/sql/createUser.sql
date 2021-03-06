-- App DB User
CREATE USER APPUSER IDENTIFIED BY APPUSER_dev1 default tablespace APPUSER_DTBS;
ALTER USER APPUSER QUOTA UNLIMITED ON APPUSER_DTBS;
ALTER USER APPUSER QUOTA UNLIMITED ON APPUSER_ITBS;
CREATE ROLE APPUSER_ROLE;
GRANT CONNECT, RESOURCE, CREATE SYNONYM, CREATE VIEW, UNLIMITED TABLESPACE to APPUSER_ROLE;
GRANT APPUSER_ROLE TO APPUSER;
