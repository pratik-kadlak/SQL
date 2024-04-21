-- previouly grouping by was done on only one col but we can do it also by more than one col

-- now we see harris twice because dan harris and frieda harris is distinguished by author_fname
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

-- or we can also use concat() here and groupby on the new column
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author, 
    COUNT(*)
FROM books
GROUP BY author;