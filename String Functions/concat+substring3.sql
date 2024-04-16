-- author's initials
SELECT CONCAT(SUBSTRING(author_fname, 1, 1), '.', SUBSTRING(author_lname, 1,1), '.') AS initials FROM books;

-- starting 10 chars from title and then appending '...' at the end
SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS short_title FROM books;