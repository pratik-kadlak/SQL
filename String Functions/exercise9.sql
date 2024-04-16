-- reverse and upper case the sentence 'Why does my cat look at me with such hatrd?'
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

-- replace spaces in titles with '->'
SELECT REPLACE(title, ' ', '->') AS title FROM books;

-- print 2 cols one lastname and other last name reversed
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;

-- full name in caps
SELECT CONCAT(UPPER(author_fname), ' ', UPPER(author_lname)) AS 'full name in caps' FROM books;

-- title was released in year table
SELECT CONCAT(title, ' was released in ', released_year) AS blurb FROM books;

-- print book titles and the length of each title
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

-- short title (1st 10 chars) + '...' , author ('lname, fname'), quantity (n in stock)
SELECT 
	CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
    CONCAT(author_lname, ',', author_fname) as author,
    CONCAT(stock_quantity, ' in stock') as quantity
FROM books;