USE book_shop;

-- select book released in 2017
SELECT * FROM books WHERE released_year = 2017;

-- select book released not in 2017
SELECT * FROM books WHERE released_year != 2017;

-- all the books which was written by Gaiman
SELECT title, author_lname FROM books WHERE author_lname = 'Gaiman';

-- all the books which was not written by Gaiman
SELECT title, author_lname FROM books WHERE author_lname != 'Gaiman';