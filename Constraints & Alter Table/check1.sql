-- The CHECK constraint is used to limit the value range that can be placed in a column.
-- If you define a CHECK constraint on a column it will allow only certain values for this column.
-- If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other 
-- columns in the row.

CREATE TABLE voters(
	name VARCHAR(50) NOT NULL,
    age INT NOT NULL CHECK (age > 18)
);

INSERT INTO voters(name, age) VALUES ('voter1', 19);
INSERT INTO voters(name, age) VALUES ('voter2', 10);

SELECT * FROM voters;

-- we can also put some condition on strings
CREATE TABLE palindromes(
	word VARCHAR(100) CHECK (word = REVERSE(word))
);

INSERT INTO palindromes(word) VALUES ('racecar');
INSERT INTO palindromes(word) VALUES ('mummy'); -- this word does not get added
INSERT INTO palindromes(word) VALUES ('mum');

SELECT * FROM palindromes;
