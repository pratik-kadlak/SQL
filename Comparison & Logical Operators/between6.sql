-- select all books published between 2004 and 2015
SELECT * FROM books WHERE released_year >= 2004 AND released_year <= 2015;

-- we can also use BETWEEN operator this also include 2004 and 2015
SELECT * FROM books WHERE released_year BETWEEN 2004 AND 2015;

-- there is also NOT BETWEEN
SELECT * FROM books WHERE released_year NOT BETWEEN 2004 AND 2015;