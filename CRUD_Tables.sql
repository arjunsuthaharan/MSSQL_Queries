-- Creating table, with ID as primary key with a nvarchar (string) vairable called gender set so that it cannot be null

CREATE TABLE tblGender
(
ID INT NOT NULL PRIMARY KEY,
gender NVARCHAR(20) NOT NULL
)

-- Creating table in specified Database (named Sample)

USE [Sample]

CREATE TABLE tblGender
(
ID INT NOT NULL PRIMARY KEY,
gender NVARCHAR(20) NOT NULL
)

-- Altering/Updating existing table

ALTER TABLE tblGender
ADD age INT


-- Adding FOREIGN KEY to table
ALTER TABLE tblPerson
ADD CONSTRAINT tblPerson_genderID_FK
FOREIGN KEY (genderID) REFERENCES tblGender(ID)

-- Dropping table

DROP TABLE tblGender