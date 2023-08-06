-- Creating Stored Procedure
CREATE PROCEDURE spGetEmployees
AS
BEGIN
	SELECT * FROM tblEmployee
END

-- Calling Stored Procedure

spGetEmployees

-- Creating Stored Procedure with parameters

CREATE PROCEDURE spGetEmployeesByGender
@Gender nvarchar(20)
AS
BEGIN
	SELECT * FROM tblEmployee WHERE Gender = @Gender
END

-- Calling Stored Procedure with paramteres

spGetEmployeesByGender 'Male'

-- Using System Stored Procedures

sp_helptext spGetEmployees

-- Dropping Stored Procedure

DROP PROCEDURE spGetEmployees

-- Encrypting Stored Procedure (and updating existing stored procedure)

ALTER PROCEDURE spGetEmployeesByGender
@Gender nvarchar(20)
WITH ENCRYPTION
AS
BEGIN
	SELECT * FROM tblEmployee WHERE Gender = @Gender
END