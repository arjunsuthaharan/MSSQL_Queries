
-- Creating Store Procedure with output value @TotalCount
CREATE PROCEDURE spGetTotalCount1
@TotalCount int Out
AS
BEGIN
	SELECT @TotalCount = COUNT(ID) FROM tblPerson
END



-- Executing Stored Procedure
DECLARE @TotalEmployees INT
EXECUTE spGetTotalCount1 @TotalEmployees OUT
SELECT @TotalEmployees


-- Creating Stored Procedure with return value

CREATE PROCEDURE spGetTotalCount2
AS
BEGIN
	RETURN (Select Count(ID) FROM tblPerson)
END

-- Executing spGetTotalCount2

DECLARE @TotalEmployees INT
EXECUTE @TotalEmployees = spGetTotalCount2
SELECT @TotalEmployees


-- Stored Procedure to get name by ID
CREATE PROCEDURE spGetNameByID1
@ID INT,
@Name nvarchar(20) OUT
AS
BEGIN
	SELECT @Name = name FROM tblPerson WHERE ID = @ID
END

-- Executing spGetNameByID1

DECLARE @Name nvarchar(20)
EXECUTE spGetNameByID1 1, @Name OUT
PRINT 'Name = ' + @Name
-- This will return fine, as out is able to return of multiple variable types

-- Stored Procedure to get Name by ID (using return)
CREATE PROCEDURE spGetNameByID2
@ID INT
AS
BEGIN
	return(SELECT name FROM tblPerson WHERE ID = @ID)
END

-- Executing spGetNameByID2

DECLARE @Name nvarchar(20)
EXECUTE @Name = spGetNameByID2 1
PRINT 'Name = ' + @Name
-- This will NOT work, since return can only return integers