-- delete all 4 year old cats
DELETE FROM cats WHERE age = 4;

-- delete the cats whose age is same as the cat_id
DELETE FROM cats WHERE age=cat_id;

-- delete all cats
DELETE FROM cats;

SELECT * FROM cats;