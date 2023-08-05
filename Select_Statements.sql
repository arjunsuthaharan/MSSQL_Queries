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

-- OR keyword in SELECT statement

SELECT * FROM tblPerson WHERE age = 20 OR age = 23 OR age = 29

-- IN keyword in SELECT statement

SELECT * FROM tblPerson WHERE age IN (20,23,29)

-- BETWEEN keyword in SELECT statement

SELECT * FROM tblPerson WHERE age BETWEEN 20 AND 25

-- LIKE keyword in SELECT statement (returns any with L in it)

SELECT * FROM tblPerson WHERE city LIKE 'L%'

-- LIKE keyword in SELECT statement (returns any with M S or T at the start in it)

SELECT * FROM tblPerson WHERE city LIKE '[^MST]%'

-- Sorting in descending order

SELECT * FROM tblPerson ORDER BY name DESC

-- Sorting in ascending order

SELECT * FROM tblPerson ORDER BY age ASC