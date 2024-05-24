-- The CHAR and VARCHAR types are similar, but differ in the way they are stored and retrieved.

-- The length of a CHAR column is fixed to the length that you declare when you create the table. 
-- The length can be any value from 0 to 255. When CHAR values are stored, they are right-padded with spaces to 
-- the specified length. When CHAR values are retrieved, trailing spaces are removed unless the 
-- PAD_CHAR_TO_FULL_LENGTH SQL mode is enabled.

CREATE DATABASE data_types;
USE data_types;
CREATE TABLE friends (
	name VARCHAR(20),
    initials CHAR(2)
);

INSERT INTO friends (name, initials)
VALUES ('Pratik Kadlak', 'PK'),
	   ('Sagar Salve', 'SS'),
       ('Ritik Tripathi', 'RT');
       
-- if we give less than 2 char to CHAR then it will pad it with white spaces 
INSERT INTO friends (name, initials)
VALUES ('Sumit Mal', 'S');

SELECT * FROM friends;

-- "CHAR is faster for fixed length text"
-- if we know the length of character of a col then we should always use CHAR becuase it is optimized 
-- for efficient retrival and also is memory efficient but if we dont know the length then use VARCHAR
       
-- SQL gives error if we give input more than the capacity of the columns
INSERT INTO friends(name, initials)
VALUES ('abcdefghijhkmnopqrstuvwxyz', 'AZ');

INSERT INTO friends(name, initials)
VALUES ('Shubham Kadlak', 'SVK');


