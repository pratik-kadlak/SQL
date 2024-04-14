-- UPDATE

-- update all polo shirt and change their size of L
-- update the shirt last worn 15 days ago to 0
-- update all white shirts change size to 'XS' and color to 'off white'

SET SQL_SAFE_UPDATES = 0;

UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';

UPDATE shirts SET last_worn=0 WHERE last_worn=15;

UPDATE shirts SET shirt_size='XS', color='off white' WHERE color='white';

SELECT * FROM shirts;