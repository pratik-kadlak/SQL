-- The INNER JOIN keyword selects records that have matching values in both tables.

SELECT * FROM customers
JOIN orders ON customers.id = orders.customer_id;

-- we can also specify the type of join explicitly but for inner join it is the default value
SELECT * FROM customers
INNER JOIN orders ON orders.customer_id = customers.id;

-- if we change the order of the joining then the output also follows the same sequence
SELECT * FROM orders
JOIN customers ON orders.customer_id = customers.id;

SELECT customers.id, first_name, last_name, order_date, amount FROM customers
JOIN orders ON customers.id = orders.customer_id;


-- Inner Join With Group By

-- find the total amount spent by each customer
SELECT first_name, last_name, SUM(amount) FROM customers
JOIN orders ON customers.id = orders.customer_id 
GROUP BY customers.id;