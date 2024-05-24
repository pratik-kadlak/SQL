-- if we want to find the no of days between 2 dates
SELECT DATEDIFF(CURDATE(), birthdate) FROM people;

-- DATE_ADD() -> adds no of days to the date
SELECT DATE_ADD(CURDATE(), INTERVAL 1 YEAR);
SELECT birthdate, DATE_ADD(birthdate, INTERVAL 18 YEAR) FROM people; -- this calc when the people can vote

-- similarly we can use DATE_SUB()

SELECT birthtime, TIMEDIFF(CURTIME(), birthtime) FROM people;

-- NOTE: we can also use '+' and '-' for adding and subtracting dates
SELECT CURDATE() + 3;
SELECT name, birthdate, birthdate + INTERVAL 18 YEAR FROM people;