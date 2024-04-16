-- gives the length of the string
SELECT CHAR_LENGTH('HELLO WORLD');

-- Note: SQL also have a func called LENGTH() which returns the no of bytes it takes to store
SELECT LENGTH('HELLO WORLD'); -- also outputs 11 becuase char are 1 byte

-- char length of title
SELECT CHAR_LENGTH(title), title FROM books;