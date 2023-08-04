-- SELECT statement for all columns

SELECT * FROM tblPerson

-- SELECT distinct elements in a column

SELECT DISTINCT city FROM tblPerson

--SELECT distinct elements from multiple columns

SELECT DISTINCT name, city FROM tblPerson

-- Retrieving specific rows (equal to)

SELECT * FROM tblPerson WHERE city = 'London'


-- Retrieving specific rows (NOT equal to)

SELECT * FROM tblPerson WHERE city <> 'London'