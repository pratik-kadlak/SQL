SET SQL_SAFE_UPDATES = 0;

-- currently we cant delete the customers from customer table whose customer_id is in orders table
DELETE FROM customers WHERE last_name='George';

-- for this we can 1. delete the entries in orders table as well, 2. or set some default value

-- for on delete CAScade we have to change the table definition

CREATE TABLE customers2(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE orders2(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
	amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers2(id) ON DELETE CASCADE
);

INSERT INTO customers2 (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders2 (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
       
-- now we can delete the entry from customers table and all entreis of that customer will be 
-- deleted automatically 
DELETE FROM customers2 WHERE last_name='George';

SELECT * FROM customers2;
SELECT * FROM orders2;





