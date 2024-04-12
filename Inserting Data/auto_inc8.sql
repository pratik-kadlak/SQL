-- to solve the problem of unique id we can use `AUTO_INCREMENT`

CREATE TABLE unique_cats(
	cat_id INT PRIMARY KEY auto_increment,
    name VARCHAR(20),
    age INT);
    
DESC unique_cats;

-- so now while inserting rows we no longer have to mention cat_id, auto_increment will take care of that
INSERT INTO unique_cats(name , age) VALUES ('Apple', 5);
INSERT INTO unique_cats(name , age) VALUES ('Mango', 5);

SELECT * FROM unique_cats; 
