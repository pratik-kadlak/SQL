-- To insert string always use '' single quotes because 
-- double quotes does not work with some of the other DBMS 
-- hence for convention always use '' quotes

-- But what if the string itself have single quotes 

CREATE TABLE shop (item VARCHAR(20));

-- INSERT INTO shop (item) VALUES ('mario's cap'); this line gives error

-- to insert single quote in string we can use escape character '\'
INSERT INTO shop (item) VALUES ('mario\'s cap');

SELECT * FROM shop;

DROP TABLE shop;