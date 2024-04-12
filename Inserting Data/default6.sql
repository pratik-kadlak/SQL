-- If we want that if the values is not present while insertion for a particular col
-- and we want to set it to some default value then we can use DEFAULT keyword

DESC cats; -- currently the default value is NULL

CREATE TABLE cats3(
	name VARCHAR(20) DEFAULT 'John Doe', 
    age INT DEFAULT 1);
    
DESC cats3; -- we can see our default values in the col

-- now if we didn't provide value for any of the col it will take default values 

INSERT INTO cats3(name) VALUES ('Lizzie');
INSERT INTO cats3(age) VALUES (11); 
INSERT INTO cats3() VALUES();

SELECT * FROM cats3;

-- Now one might think that if we provide a Default value so we dont need `NOT NULL` keyword
-- but we can manually set the values to be null

INSERT INTO cats3(name, age) VALUES (NULL, NULL);
SELECT * FROM cats3; -- and now we got null values in our table 

-- to prevent this from happening we have to create a table like this 
CREATE TABLE cats4(
	name VARCHAR(20) NOT NULL DEFAULT 'John Doe',
    age INT NOT NULL DEFAULT 1);
    
-- INSERT INTO cats4(name, age) VALUES (NULL, NULL); -- now this line gives error 
INSERT INTO cats4() VALUES(); -- but this line works fine

DROP TABLE cats3;
DROP TABLE cats4;