-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions. 
-- HAVING Syntax
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- HAVING condition
-- ORDER BY column_name(s);

SELECT 
	title,
    AVG(rating),
    COUNT(rating) AS review_count
FROM full_reviews
GROUP BY title;

-- now suppose we want the review count to > 1  but we cant do this with where 
SELECT 
	title,
    AVG(rating),
    COUNT(rating) AS review_count
FROM full_reviews
WHERE COUNT(rating)> 1
GROUP BY title;

-- we have to use HAVING
SELECT 
	title,
    AVG(rating),
    COUNT(rating) AS review_count
FROM full_reviews
GROUP BY title HAVING COUNT(rating) > 1;
