USE data_types;

-- note that we are comparing the date to string but mysql figures it out
SELECT * FROM people WHERE birthdate < '2005-01-01';
SELECT * FROM people WHERE birthtime > '12:00:00';

-- one more thing we can do is we can use CAST() to change string to other datatypes
SELECT CAST('09:00:00' AS TIME);

-- select people born in the afternoon
SELECT * FROM people WHERE birthtime BETWEEN CAST('12:00:00' AS TIME) AND CAST('16:00:00' AS TIME);

