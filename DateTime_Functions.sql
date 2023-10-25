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


-- DATEPART function returns integer representing specified datepart (similar to datename but returns int instead of nvarchar)

SELECT DATEPART(WEEKDAY, '2000-01-25') -- returns 3, representing Tuesday numerically

-- DATEADD function returns DateTime after adding specified number

SELECT DATEADD(DAY, 20, '2000-01-03') -- returns 2000-01-23
SELECT DATEADD(DAY, 20, '2000-01-25') -- returns 2000-02-14

-- DATEDIFF function returns integer count of difference between two specified dates

SELECT DATEDIFF(DAY, '2000-01-15', '2000-01-25') -- returns 10
SELECT DATEDIFF(DAY, '2000-01-15', '2001-01-25') -- returns 376

-- CAST and CONVERT functions to convert how date time data is displayed

SELECT CAST(cDateTime as nvarchar) as convertedDateTime FROM tblDateTime
SELECT CONVERT(nvarchar, cDateTime) as convertedDateTime FROM tblDateTime
SELECT CONVERT(nvarchar, cDateTime, 103) as convertedDateTime FROM tblDateTime -- 103 specifies dd/mm/yyyy format, 101-105 formats exist

-- Retrieving only DatePart of DateTime using CAST and CONVERT
SELECT CONVERT(VARCHAR(10), GETDATE(), 101) -- returns current date in mm/dd/yyyy