-- SELECTION

-- print article and color of every shirt
-- print everything except shirt_id for all the medium shirts


SELECT article, color FROM shirts;

SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';