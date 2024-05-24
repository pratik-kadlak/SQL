SELECT CURTIME(); -- gives current time
SELECT CURDATE(); -- gives  current date
SELECT NOW(); -- gives current datetime

INSERT INTO people(name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

SELECT * FROM people;