-- enen though it look like a table but there are a lot of things we cant do with 
-- view which we can do with normal table 

-- we cant delete from a view
DELETE FROM full_reviews WHERE released_year='2010';

-- the rules are given in the below link
-- https://dev.mysql.com/doc/refman/8.0/en/view-updatability.html

-- but there can be views from which we can delete and update
CREATE VIEW series_view AS
SELECT * FROM series ORDER BY released_year;

SELECT * FROM series_view;

INSERT INTO series_view(title, released_year, genre)
VALUES ('The Great', '2020', 'Comedy'); 

SELECT * FROM series_view;
SELECT * FROM series; -- it also gets added to the series table

SET SQL_SAFE_UPDATES = 0;
DELETE FROM series_view WHERE title='The Great';

SELECT * FROM series_view;
SELECT * FROM series; -- it also gets deleted from the series table