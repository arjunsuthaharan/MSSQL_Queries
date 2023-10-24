-- USING DATEDIFF, DATEADD, GETDATE, MONTH and DAY functions to calculate Age given specified date

CREATE FUNCTION fnCalculateAge(@dob DateTime)
RETURNS nvarchar(50)

AS
BEGIN

	DECLARE @tempDate DateTime, @years int, @months int, @days int


	SELECT @tempDate = @dob

	SELECT @years = DATEDIFF(YEAR, @tempdate, GETDATE()) -
					CASE
						WHEN (MONTH(@dob) > MONTH(GETDATE())) OR
						(MONTH(@dob) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE()))
						THEN 1 ELSE 0
					END

	SELECT @tempDate = DATEADD(YEAR, @years, @tempDate)

	SELECT @months = DATEDIFF(MONTH, @tempdate, GETDATE()) -
					CASE
						WHEN DAY(@DOB) > DAY(GETDATE())
						THEN 1 ELSE 0
					END

	SELECT @tempDate = DATEADD(MONTH, @months, @tempDate)

	SELECT @days = DATEDIFF(DAY, @tempdate, GETDATE())

	DECLARE @age NVARCHAR(50)
	SET @age = CAST(@years as nvarchar(4)) + ' years ' + CAST(@months as nvarchar(2)) + ' months ' + CAST(@days as nvarchar(2)) + ' days old'

	RETURN @age

END

-- Executing CalculateAge Function

SELECT dbo.fnCalculateAge('01-25-2000')