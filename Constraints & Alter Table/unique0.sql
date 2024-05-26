-- SQL UNIQUE Constraint
-- The UNIQUE constraint ensures that all values in a column are different.
-- Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.
-- A PRIMARY KEY constraint automatically has a UNIQUE constraint.
-- However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.

CREATE DATABASE constraints;
USE constraints;

CREATE TABLE contacts(
	name VARCHAR(50) NOT NULL,
    phone VARCHAR(10) NOT NULL UNIQUE
);

-- now we cant insert duplicate phone numbers in phone col
INSERT INTO contacts(name, phone) VALUES('alice', '1234567890');
INSERT INTO contacts(name, phone) VALUES('bob', '1234567890'); -- this query does not get executed successfully

SELECT * FROM contacts; -- we have only one entry