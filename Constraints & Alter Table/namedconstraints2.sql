-- when any check is violated it shows message 'Check constraint 'palindromes_chk_1' is violated'
-- which is not very meaningful
-- if there were another check and if that is violated then the message would be 'palindrome_chk_2' chk_2 is violted
-- so to get meaningful message we can use Constraint keyword

CREATE TABLE voters2(
	name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    CONSTRAINT age_over_18 CHECK (age > 18)
);

INSERT INTO voters2(name, age) VALUES ('voter1', 19);
INSERT INTO voters2(name, age) VALUES ('voter2', 10); 
-- now we get some meaningful messages