-- DELETE

-- delete all old shirts last worn 200 days ago
-- delete all tank tops
-- delete all shirts
-- drop the shirts table

DELETE FROM shirts WHERE last_worn=200;

DELETE FROM shirts WHERE article='tank top';

DELETE FROM shirts;

SELECT * FROM shirts;

DROP TABLE shirts;

SHOW TABLES;