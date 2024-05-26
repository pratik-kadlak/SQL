CREATE TABLE companies (
    name VARCHAR(30) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);

-- here pair of (name, address) must be unique
INSERT INTO companies(name, address) VALUES('ABC', 'Wall Street');
INSERT INTO companies(name, address) VALUES('XYZ', 'Wall Street');
INSERT INTO companies(name, address) VALUES('ABC', 'Dalal Street');
INSERT INTO companies(name, address) VALUES('ABC', 'Wall Street'); -- we cant add duplicate

SELECT * FROM companies;

-- we can also use multiple columns in CHECK constraint