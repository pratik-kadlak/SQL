-- The ROLLUP operator enhances the capabilities of the GROUP BY clause by enabling the computation of subtotals 
-- and grand totals for a set of columns.

SELECT 
	title,
    AVG(rating) 
FROM full_reviews
GROUP BY title WITH ROLLUP; -- last row gives summary of entire table

-- second level of rollup
SELECT 
	released_year,
    genre,
    AVG(rating) 
FROM full_reviews
GROUP BY released_year, genre WITH ROLLUP; -- observe the year 2014