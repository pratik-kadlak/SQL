-- The CASE expression goes through conditions and returns a value when the first condition is met 
-- (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. 
-- If no conditions are true, it returns the value in the ELSE clause.
-- If there is no ELSE part and no conditions are true, it returns NULL.

-- SYNTAX
-- CASE
--     WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     WHEN conditionN THEN resultN
--     ELSE result
-- END;

SELECT title, released_year,
	CASE 
		WHEN released_year >= 2000 THEN 'Modern'
        ELSE 'Classic'
	END AS 'Genre'
FROM books;


SELECT title, stock_quantity,
	CASE
		WHEN stock_quantity > 100 THEN '***'
        WHEN stock_quantity > 50 THEN '**'
        ELSE '*'
	END AS 'stock'
FROM books;