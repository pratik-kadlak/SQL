DESC companies;

-- add new col to existing table
ALTER TABLE companies ADD COLUMN city VARCHAR(25);

DESC companies;
SELECT * FROM companies; -- default values is NULL

-- add col with not null constraint -> it stores default values in the col 
-- String -> '' & Int -> 0
-- we could also set out own default values
ALTER TABLE companies ADD COLUMN phone VARCHAR(10) NOT NULL;

SELECT * FROM companies;