-- DAY() gives the date 
SELECT birthdate, DAY(birthdate) FROM people ;

-- DAYOFWEEK() gives the day of the week 
-- NOTE: 1-> SUNDAY, 2-> MONDAY and so on...
SELECT birthdate, DAY(birthdate), DAYOFWEEK(birthdate) FROM people;

-- DAYOFYEAR() gives the day number in a year 
SELECT birthdate, DAYOFYEAR(birthdate) FROM people;

-- MONTHNAME() gives the name of the month
SELECT birthdate, MONTHNAME(birthdate) FROM people;

-- if in TIME we try to access month or year then it gives the last entry month and year
SELECT birthtime, MONTH(birthtime) FROM people;
SELECT birthtime, YEAR(birthtime) FROM people;

-- whereas these functions work on datetime
SELECT birthdt, MONTH(birthdt), YEAR(birthdt), MONTHNAME(birthdt) FROM people;