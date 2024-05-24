SELECT name, birthtime, HOUR(birthtime) FROM people;
SELECT name, birthtime, MINUTE(birthtime) FROM people;
SELECT name, birthtime, SECOND(birthtime) FROM people;

SELECT DATE(birthdt), TIME(birthdt) FROM people;
