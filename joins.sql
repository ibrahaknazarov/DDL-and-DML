--1
SELECT COUNT(*) AS total_orders FROM orders;

--2
SELECT user_id, SUM(amount) AS total_amount
FROM orders
GROUP BY user_id;


--3

SELECT user_id, SUM(amount) AS total_amount
FROM orders
GROUP BY user_id
ORDER BY total_amount DESC
LIMIT 1;


--4
SELECT user_id, COUNT(*) AS order_count
FROM orders
GROUP BY user_id
HAVING COUNT(*) > 2;

--5

SELECT u.name, SUM(o.amount) AS total_amount
FROM users u
JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.name;

--6

SELECT AVG(amount) AS average_order_amount FROM orders;

--7

SELECT u.name, COUNT(o.id) AS order_count
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.name;

--8
SELECT u.name
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
WHERE o.id IS NULL;


