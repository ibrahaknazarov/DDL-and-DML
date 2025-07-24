-- 1. Все пользователи с gmail
SELECT * FROM users WHERE email LIKE '%@gmail.com';

-- 2. Заказы по дате убыванию
SELECT * FROM orders ORDER BY order_date DESC;

-- 3. 2 самых дорогих заказа
SELECT * FROM orders ORDER BY amount DESC LIMIT 2;

-- 4. Заказы за последние 2 дня
SELECT * FROM orders WHERE order_date >= CURRENT_DATE - INTERVAL '2 DAY';

-- 5. Заказы на сумму больше 200
SELECT * FROM orders WHERE amount > 200;
