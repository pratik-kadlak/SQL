-- The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from 
-- the left table (table1). The result is 0 records from the left side, if there is no match.


SELECT first_name, last_name, order_date, amount FROM customers
RIGHT JOIN orders ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount FROM customers
RIGHT JOIN orders ON customers.id = orders.customer_id;

-- now both the above queries shows the same result because every single order has a customer id
-- so if we have anything extra in orders table then we can see the null values 
-- but we can't add any value to the order due to the foreign key constraint
-- but we can insert null values (in real world this will not do as customer_id in orders can not be nULL

INSERT INTO orders(order_date, amount) VALUES (CURDATE(), 99);
SELECT * FROM orders;

-- now we can see the null values 
SELECT first_name, last_name, order_date, amount FROM customers
RIGHT JOIN orders ON customers.id = orders.customer_id;