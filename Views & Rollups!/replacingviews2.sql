-- now if we made a lot of changes to the original table so we might want to update the view

-- suppose we want the series_view to be in desc order
CREATE VIEW series_view AS 
SELECT * FROM series ORDER BY released_year DESC;

-- it shows the view already exists
-- so we have to change the query to
CREATE OR REPLACE VIEW series_view AS 
SELECT * FROM series ORDER BY released_year DESC;

SELECT * FROM series_view; -- the order changed

-- we can also use Alter view 
ALTER VIEW series_view AS 
SELECT * FROM series ORDER BY released_year;

SELECT * FROM series_view; -- again the order is in asc now

-- to delete the view
DROP VIEW series_view;

-- note here the view is deleted but our original data is available as is
