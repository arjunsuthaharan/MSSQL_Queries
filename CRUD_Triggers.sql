-- Creating Trigger for insertion

CREATE TRIGGER trForInsertion on Test1 FOR INSERT
AS
BEGIN
	INSERT INTO Test2 VALUES('Hank')
END

-- Deleting Trigger

DROP TRIGGER trForInsertion