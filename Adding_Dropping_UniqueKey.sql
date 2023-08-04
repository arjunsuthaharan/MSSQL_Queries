-- Adding unique key to table (used for unique column values like primary key)

ALTER TABLE tblPerson
ADD CONSTRAINT uq_tblPerson_email UNIQUE(email)

-- Dropping unique key

ALTER TABLE tblPerson
DROP CONSTRAINT uq_tblPerson_email