-- Adding Constraint

ALTER TABLE tblPerson
ADD CONSTRAINT ck_tblPerson_age CHECK (AGE > 0 AND AGE < 150)

-- Dropping Constraint

ALTER TABLE tblPerson
DROP CONSTRAINT ck_tblPerson_age