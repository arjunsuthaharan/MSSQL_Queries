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
CROSS JOIN tblGender
