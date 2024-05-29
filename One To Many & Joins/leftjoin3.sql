-- The LEFT JOIN keyword returns all records from the left table (table1), 
-- and the matching records (if any) from the right table (table2).

USE one_to_many;

SELECT * FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id;

-- left join with group by
SELECT first_name, last_name, SUM(amount) FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name;

-- now the problem with the above code is that it shows null in some entries so we want to replace it with 0
-- for this we can use IFNULL()
SELECT first_name, last_name, IFNULL(SUM(amount),0) FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name;