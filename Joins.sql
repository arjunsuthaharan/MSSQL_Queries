-- Join query for two tables

SELECT name, email, gender
FROM tblPerson
JOIN tblGender
ON tblPerson.genderID = tblGender.ID;

-- Left Join query (can also use LEFT OUTER)

SELECT name, email, gender
FROM tblPerson
LEFT JOIN tblGender
ON tblPerson.genderID = tblGender.ID;

-- Right Join query (can also use RIGHT OUTER)

SELECT name, email, gender
FROM tblPerson
RIGHT JOIN tblGender
ON tblPerson.genderID = tblGender.ID;

-- Full Join query (can also use FULL OUTER)

SELECT name, email, gender
FROM tblPerson
FULL JOIN tblGender
ON tblPerson.genderID = tblGender.ID;

-- Cross Join query

SELECT name, email, gender
FROM tblPerson
CROSS JOIN tblGender;

-- Exclusively outer values using WHERE

SELECT name, email, gender
FROM tblPerson
LEFT JOIN tblGender
ON tblPerson.genderID = tblGender.ID
WHERE tblPerson.genderID IS NULL

SELECT name, email, gender
FROM tblPerson
RIGHT JOIN tblGender
ON tblPerson.genderID = tblGender.ID
WHERE tblPerson.genderID IS NULL

-- Exclusively outer values FULL join

SELECT name, email, gender
FROM tblPerson
FULL JOIN tblGender
ON tblPerson.genderID = tblGender.ID
WHERE tblPerson.genderID IS NULL
OR tblGender.ID IS NULL


-- Self join query

SELECT E.name as employee, M.name as manager
FROM tblEmployee E
LEFT JOIN tblEmployee M
ON E.managerID = M.managerID

-- Cross Self Join

SELECT E.name as employee, M.name as manager
FROM tblEmployee E
CROSS JOIN tblEmployee M