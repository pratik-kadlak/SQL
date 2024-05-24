-- print current time
SELECT CURTIME();

-- print date without time
SELECT CURDATE();

-- print current day of the week (number) 
SELECT dayofweek(CURDATE());

-- print the name of the day
SELECT DAYNAME(CURDATE());

-- print curdate and time in this format 'mm-dd-yyyy' 
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

-- now print it with format 'January 2nd at 3:15'
SELECT DATE_FORMAT(NOW(), '%M %D at %H:%i');

-- create a tweets table with cols (tweet, username, time)
CREATE TABLE tweets(
	tweet VARCHAR(100),
    username VARCHAR(50),
    tweeted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tweets (tweet, username)
VALUES ('MY FIRST TWEET', 'john');

INSERT INTO tweets (tweet, username)
VALUES ('Good Luck', 'bob');

SELECT * FROM tweets;