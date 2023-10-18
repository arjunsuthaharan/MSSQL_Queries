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

-- REPLICATE function with SUBSTRING and CHARINDEX to mask email string

SELECT name, SUBSTRING(email, 1, 2) + REPLICATE('*', 5) + 
SUBSTRING(email, CHARINDEX('@', email), LEN(email) - CHARINDEX('@', email)+1) as email
FROM tblPerson

-- SPACE function to add space in string between names

SELECT firstName + Space(5) + lastName as fullName
FROM tblPerson


-- PATINDEX function to return the starting position of first occurance of pattern

SELECT email, PATINDEX('%@d.com', email) AS firstOccurance
FROM tblPerson
WHERE PATINDEX('%@d.com', email) > 0

-- REPLACE function to replace specified string value with another string value

SELECT email, REPLACE(email, '.com', '.net') as convertedEmail
FROM tblPerson

SELECT * from tblPerson

-- STUFF Function to inject string at specified point, and removes characters specified

SELECT email, STUFF(email, 2,2,'******') as stuffedEmail
FROM tblPerson

