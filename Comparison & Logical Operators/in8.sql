USE book_shop;

-- select all books if written by 'Carver', 'Lahiri', and 'Smith'
SELECT * FROM books 
WHERE
	author_lname = 'Carver' OR
    author_lname = 'Lahiri' OR 
    author_lname = 'Smith';
    
-- for such queries we can also use 'IN' operator
SELECT * FROM books 
WHERE author_lname IN ('Carver', 'Smith', 'Lahiri');

-- we can also use 'NOT IN'
SELECT * FROM books 
WHERE author_lname NOT IN ('Carver', 'Smith', 'Lahiri');

-- select all books which are published in odd years
SELECT * FROM books WHERE released_year%2=1;