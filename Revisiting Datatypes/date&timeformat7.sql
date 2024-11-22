-- if we want the output to be April 11 2024
SELECT CONCAT(
	MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)
) FROM people;

-- for this purpose only DATE_FORMAT() func can be used
-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_date-format

SELECT birthdate, DATE_FORMAT(birthdate, '%b') FROM people; -- '%b' abbrevates the first 3 characters of month
SELECT birthdate, DATE_FORMAT(birthdate, '%a %b') FROM people;
SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;

SELECT birthtime, TIME_FORMAT(birthtime, '%H:%i') FROM people;
SELECT birthtime, TIME_FORMAT(birthtime, 'Born On -> %H:%i:%s') FROM people;
