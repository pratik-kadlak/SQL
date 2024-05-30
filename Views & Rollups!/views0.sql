-- In SQL, a view is a virtual table based on the result-set of an SQL statement.
-- A view contains rows and columns, just like a real table. The fields in a view are fields 
-- from one or more real tables in the database.
-- You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.
-- A view is created with the CREATE VIEW statement. 

USE many_to_many;

SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviews.reviewer_id = reviewers.id;

-- now for any type of analysis this table can be common so for not typing this again we can save it as view

CREATE VIEW full_reviews AS 
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviews.reviewer_id = reviewers.id;

-- now we can use the table as if it already exists 
SELECT * FROM full_reviews;

-- hence now we can use this table for further analysis
