-- LEFT string function

SELECT LEFT('SAMPLEWORD',2)

-- RIGHT string function

SELECT RIGHT('SAMPLEWORD',3)

-- CHARINDEX string function

SELECT CHARINDEX('@', 'email@email.com')


-- SUBSTRING string function

SELECT SUBSTRING('email@email.com', 7, 9)

-- SUBSTRING using CHARINDEX and LEN for startindex and substring length

SELECT SUBSTRING('email@email.com', 
CHARINDEX('@', 'email@email.com') + 1, 
LEN('email@email.com') - CHARINDEX('@', 'email@email.com'))

-- USING SUBSTRING, CHARINDEX and LEN to retrieve count for email end types

SELECT SUBSTRING(email, 
CHARINDEX('@', email) + 1, 
LEN(email) - CHARINDEX('@', email)) as emailDomain,
COUNT (email) as Total
FROM tblPerson
Group by SUBSTRING(email, 
CHARINDEX('@', email) + 1, 
LEN(email) - CHARINDEX('@', email))