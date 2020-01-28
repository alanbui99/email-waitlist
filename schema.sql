CREATE TABLE users (
email VARCHAR(255) PRIMARY KEY,
created_at TIMESTAMP DEFAULT NOW());

INSERT INTO users (email) VALUES('Katie34@yahoo.com'), ('Tunde@gmail.com');

SELECT DATE_FORMAT(created_at,'%b %D %Y') AS earliest_date
FROM users
ORDER BY created_at ASC
LIMIT 1;

SELECT email, created_at AS earliest_date
FROM users
ORDER BY created_at ASC
LIMIT 1;

SELECT DATE_FORMAT(created_at,'%M') AS month, COUNT(*) AS count
FROM users
GROUP BY month
ORDER BY count DESC;

SELECT COUNT(*) AS yahoo_users
FROM users
WHERE email LIKE '%@yahoo.com';

SELECT CASE
	WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
	WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
	WHEN email LIKE '%@gmail.com' THEN 'gmail'
	ELSE 'other'
END AS provider,
COUNT(*) AS number
FROM users
GROUP BY provider;

SELECT CASE
	WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
	WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
	WHEN email LIKE '%@gmail.com' THEN 'gmail'
	ELSE 'other'
END AS provider
FROM users
ORDER BY provider;