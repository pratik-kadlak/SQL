-- create a table of title, rating
SELECT title, rating FROM series 
INNER JOIN reviews ON series.id = reviews.series_id;

-- avg rating of the series
SELECT title, AVG(rating) AS avg_rating FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY series.title
ORDER BY avg_rating;

-- all the rating given by the reviewer
SELECT first_name, last_name, rating FROM reviewers
JOIN reviews ON reviewers.id = reviews.reviewer_id;

-- identify the name of the series which have no reviews
SELECT title AS 'unreviewed_series' FROM series 
LEFT JOIN reviews ON series.id = reviews.series_id
WHERE rating IS NULL;

-- genre and their avg_rating
SELECT genre, AVG(rating) AS 'avg_rating' FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;

-- fname, lname, count, min, max, avg, status(active, inactive)
SELECT 
    first_name,
    last_name,
    IFNULL(COUNT(rating), 0) AS COUNT,
    IFNULL(MIN(rating), 0.0) AS MIN,
    IFNULL(MAX(rating), 0.0) AS MAX,
    IFNULL(AVG(rating), 0.0000) AS AVG,
    CASE
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name , last_name;

-- instead of case we can also use IF()
SELECT 
    first_name,
    last_name,
    IFNULL(COUNT(rating), 0) AS COUNT,
    IFNULL(MIN(rating), 0.0) AS MIN,
    IFNULL(MAX(rating), 0.0) AS MAX,
    IFNULL(AVG(rating), 0.0000) AS AVG,
    IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name , last_name;


-- title, rating, reviewer
SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer
FROM reviews
INNER JOIN  series ON series.id=reviews.series_id
INNER JOIN reviewers ON reviewers.id = reviews.reviewer_id
ORDER BY title;