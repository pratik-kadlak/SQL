-- find the 5 oldest user
SELECT * FROM USERS ORDER BY created_at LIMIT 5;


-- what day of the week do most users register on 
SELECT 
	DAYNAME(created_at) AS day,
    COUNT(*) AS users_registered
 FROM users 
 GROUP BY day
 ORDER BY users_registered DESC 
 LIMIT 1;
 
 
 -- find the users who have never posted a photo
SELECT username FROM users 
LEFT JOIN photos 
ON users.id = photos.user_id
WHERE user_id IS NULL;


-- who has got the most like on a single photo

-- METHOD 1 -> SUBQUERY
SELECT username FROM users WHERE id = 
(SELECT user_id FROM photos WHERE id = 
(
	SELECT id FROM photos
	INNER JOIN likes 
	ON photos.id = likes.photo_id
	GROUP BY photos.id
	ORDER BY COUNT(*) DESC
	LIMIT 1
));

-- METHOD 2 -> JOINS
SELECT
	username,
    photos.id,
    photos.image_url,
    COUNT(*) AS total
FROM photos
INNER JOIN likes 
	ON likes.photo_id = photos.id
INNER JOIN users
	ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;


-- how many times does the average user post
SELECT 
	(SELECT COUNT(*) FROM photos) /
    (SELECT COUNT(*) FROM users);
    
    
-- top 5 most commonly used hashtags
SELECT tag_name, COUNT(*) FROM tags
INNER JOIN photo_tags
ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY COUNT(*) DESC
LIMIT 5;


-- find users who like every single photo on the site
SELECT 
	username,
    COUNT(*) AS total_likes
FROM users
INNER JOIN likes 
ON users.id = likes.user_id
GROUP BY users.id
HAVING total_likes = 
		(SELECT COUNT(*) FROM photos)
;