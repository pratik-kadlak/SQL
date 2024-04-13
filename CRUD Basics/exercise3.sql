-- query for selecting cat_id from the table
SELECT cat_id FROM cats;

-- query for selecting name, breed from the table
SELECT name, breed FROM cats;

-- query for selecting name,age for all tabby breed cats from the table
SELECT name, age FROM cats WHERE breed='Tabby';

-- query for selecting cat_id, age where both cat_id and age are same from the table
SELECT cat_id, age FROM cats WHERE cat_id=age;