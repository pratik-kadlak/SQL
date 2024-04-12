USE pet_shop;

INSERT INTO cats (name, age)
VALUES ('Jetson', 7);

INSERT INTO cats(name, age)
VALUES ('Blue', 5);

-- we can change the order of the data i.e age first and name later
-- but make sure that the order is followed by the values
INSERT INTO cats(age, name)
VALUES (12, "Beth");

-- if we change the order mentioned just after the table_name then sql gives error
-- INSERT INTO cats(name, age)
-- VALUES (8, "Linus");