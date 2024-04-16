-- Reverse a string

SELECT REVERSE('HELLO WORLD');

-- for NULL we get back NULL only
SELECT REVERSE(NULL);

-- reverse author_fname
SELECT REVERSE(author_fname) FROM books;

-- make every string as palindrome for author_fname eg: ColttloC
SELECT CONCAT(author_fname, REVERSE(author_fname)) AS palindromes FROM books;