-- using RENAME

RENAME TABLE companies TO offices;
SELECT * FROM companies; -- doesn't exist
SELECT * FROM offices;

-- using ALTER

ALTER TABLE offices RENAME TO companies;
SELECT * FROM offices; -- doesn't exist
SELECT * FROM companies; 


-- renaming column names
ALTER TABLE companies RENAME COLUMN name TO company_name;
SELECT * FROM companies;
