-- Creating table to hold different datetime data types

CREATE TABLE tblDateTime
(
cTime TIME(7),
cDate DATE,
cSmallDateTime SMALLDATETIME,
cDateTime DATETIME,
cDateTime2 DATETIME2(7),
cDateTimeOffset DATETIMEOFFSET(7),
)

SELECT * FROM tblDateTime

-- GETDATE function used to retireve current system date and time

SELECT GETDATE()

-- Filling tblDateTime table with datetime data using GETDATE function

INSERT INTO tblDateTime VALUES (GETDATE(), GETDATE(), GETDATE(), GETDATE(), GETDATE(), GETDATE())

-- CURRENT_TIMESTAMP

SELECT CURRENT_TIMESTAMP

-- SYSDATETIME function

SELECT SYSDATETIME

-- SYSDATETIMEOFFSET function

SELECT SYSDATETIMEOFFSET

-- GETUTCDATE function

SELECT GETUTCDATE

-- SYSUTCDATETIME function

SELECT SYSUTCDATETIME