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

-- GETDATE function used to retrieve current system date and time

SELECT GETDATE() -- returns current date on system

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

-- ISDATE function to retrieve if given value is valid date, time or datetime (datetime2 data types return 0)

SELECT ISDATE('NOTVALID')  -- will return 0

SELECT ISDATE(GETDATE()) -- will return 1

SELECT ISDATE('2000-01-03') -- will return 1

-- DAY function returns day number of month in given date

SELECT DAY('01/25/2000') -- returns 25

-- MONTH function returns month number in given date

SELECT MONTH('01/25/2000') -- returns 1

-- YEAR function returns year number in given date

SELECT YEAR('01/25/2000') -- returns 2000


-- DATENAME function returns a string that represents specified input

SELECT DATENAME(Day,'2000-01-25') -- returns 25
SELECT DATENAME(WEEKDAY, '2000-01-25') -- returns Tuesday
SELECT DATENAME(Month,'2000-05-25') -- returns May