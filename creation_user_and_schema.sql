CREATE SCHEMA semenchenko_schema
GO

CREATE LOGIN semenchenko 
WITH PASSWORD = 'Qwerty456';

CREATE USER t_semenchenko FOR LOGIN semenchenko 
WITH DEFAULT_SCHEMA = [semenchenko_schema]

EXEC sp_addrolemember 'db_owner', 't_semenchenko';
