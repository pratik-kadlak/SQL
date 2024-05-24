-- TIMESTAMPS ARE MORE EFFICIENT IN STORAGE AND ALSO MORE FAST THAN DATETIME

CREATE TABLE captions(
	text VARCHAR(150),
    created_at TIMESTAMP default current_timestamp
);


INSERT INTO captions (text)
VALUES ('I Love Music');

INSERT INTO captions (text) 
VALUES ('Hell Yeah.!');

SELECT * FROM captions;


