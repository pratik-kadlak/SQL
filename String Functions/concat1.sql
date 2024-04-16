-- Add two strings together. 
-- SELECT CONCAT('W3Schools', '.com');

SELECT CONCAT('h','e','l','l','o');
SELECT ('hello'); -- we get same output as above

SELECT CONCAT(author_fname, '!!!') FROM books;
SELECT CONCAT(author_fname,' ', author_lname) FROM books;

-- one annoying thing about this is the name of the column is not very meaningful
-- we can change it using 'AS' keyword
SELECT CONCAT(author_fname, ' ', author_lname) AS author_fullname FROM books;

-- now there also exists something like CONCAT_WS() which stands for CONCAT_with separator
-- it puts the separator between 2 strings
SELECT CONCAT_WS('!', 'h', 'e', 'l', 'l', 'o');

SELECT CONCAT_WS('-',title, author_fname, author_lname) AS name FROM books;