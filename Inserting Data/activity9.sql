-- Make an employee table with the cols 
-- 1. id - number (automatically increments) and primary key
-- 2. last_name - text mandatory
-- 3. firstt_name - text mandatory
-- 4. middle_name - text not mandatory
-- 5. age - number madatory
-- 6. current_status - text mandatory defaults to employed

CREATE TABLE employee(
	id INT PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    age INT NOT NULL,
    current_status VARCHAR(20) NOT NULL DEFAULT 'Employed');
    
DESC employee;


