SELECT COUNT(DAYS_EMPLOYED)
FROM application_record
where DAYS_EMPLOYED = 365243

UPDATE application_record
SET DAYS_EMPLOYED = null
where DAYS_EMPLOYED = 365243

ALTER TABLE application_record
ADD CLIENT_AGE int

UPDATE application_record
SET CLIENT_AGE = REPLACE(DAYS_BIRTH , '-', '')

ALTER TABLE application_record
ADD CLIENT_EMPLOYED int

UPDATE application_record
SET CLIENT_EMPLOYED = REPLACE(DAYS_EMPLOYED , '-', '')

UPDATE application_record
set CLIENT_AGE = CLIENT_AGE/365

UPDATE application_record
set CLIENT_EMPLOYED = CLIENT_EMPLOYED/365