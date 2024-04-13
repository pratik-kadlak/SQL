SET SQL_SAFE_UPDATES = 0;

-- change Jackson's name to "Jack"
UPDATE cats SET name="Jack" WHERE name='Jackson';

-- change Ringo's breed to "British Shorthair"
UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';

-- update both maine coons age to be 12
UPDATE cats SET age=12 WHERE breed='Maine Coon';

SELECT * FROM cats;
