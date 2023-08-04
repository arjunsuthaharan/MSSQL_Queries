-- Inserting data into tables

INSERT INTO tblPerson (ID, name, email)
VALUES (7, 'John','j@j,com')

-- Adding a default constraint to specified column in table

ALTER TABLE tblPerson
ADD CONSTRAINT df_tblPerson_genderID
DEFAULT 3 for genderID


-- Dropping a default constraint

ALTER TABLE tblPerson
DROP CONSTRAINT df_tblPerson_genderID