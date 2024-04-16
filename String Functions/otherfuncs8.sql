-- INSERT

-- Insert the string "Example" into the string "W3Schools.com". Replace the first nine characters:
SELECT INSERT("W3Schools.com", 1, 9, "Example"); -- start from 1 and replace the 9 characters
SELECT INSERT('HELLO BOY', 6, 0, ' BIRTHDAY ');


-- LEFT 

-- gives the n left most characters from the string
SELECT LEFT('HELLO WORLD', 5);


-- RIGHT 

-- gives the n right most characters from the string
SELECT RIGHT('HELLO WORLD', 5);


-- REPEAT

-- repeats the string n times
SELECT REPEAT('MySQL', 3);


-- TRIM 

-- usally used to remove the spaces from the start or end of the string but doesn't remove spaces from between
-- but we can also trim certain characters
SELECT TRIM('   san antonio    ');

SELECT TRIM('  bar   ');
SELECT TRIM(LEADING 'x' FROM 'xxxbarxxx');
SELECT TRIM(BOTH 'x' FROM 'xxxbarxxx');
SELECT TRIM(TRAILING 'xyz' FROM 'barxxyz');