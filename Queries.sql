--Retrieve the top 5 most expensive art pieces (name and price):
SELECT art_piece_name, price
FROM (
    SELECT art_piece_name, price
    FROM ART_PIECE
    ORDER BY price DESC
)
WHERE ROWNUM <= 5;

--Retrieve the last 5 orders (order_id, order_date, and total_price):
SELECT order_id, order_date, total_price
FROM (
    SELECT order_id, order_date, total_price
    FROM ORDERS
    ORDER BY order_date DESC
)
WHERE ROWNUM <= 5;

--Retrieve all orders sorted by order_date in descending order:
SELECT * FROM ORDERS
ORDER BY order_date DESC;

--Retrieve all art pieces with their categories sorted by category description and art piece name:
SELECT ap.art_piece_id, ap.art_piece_name, ap.price, cat.descrip AS category_description
FROM ART_PIECE ap
JOIN ART_PIECE_CATEGORY apc ON ap.art_piece_id = apc.ap_id
JOIN CATEGORY cat ON apc.cat_id = cat.category_id
ORDER BY cat.descrip, ap.art_piece_name;

--Find all art pieces with a price between 500 and 1500 and a quantity_available greater than 5:
SELECT * FROM ART_PIECE
WHERE price BETWEEN 500 AND 1500 AND quantity_available > 5;

--Find all customers with an email address from either 'gmail.com' or 'yahoo.com':
SELECT * FROM CUSTOMER
WHERE email LIKE '%@gmail.com' OR email LIKE '%@yahoo.com';

--Retrieve information about orders placed by a specific customer, displaying their full name and order status:
DEFINE customer_id = &id
SELECT c.customer_id, INITCAP(c.first_name || ' ' || c.last_name) AS full_name, o.order_id, INITCAP(o.order_status) AS order_status, o.order_date
FROM CUSTOMER c
JOIN ORDERS o
ON c.customer_id = o.customer_id
WHERE c.customer_id = &customer_id;
UNDEFINE customer_id

--Retrieve information about art pieces containing a specific keyword in their description:
DEFINE keyword = '&search_keyword'
SELECT ap.art_piece_id, ap.art_piece_name, ap.price, ap.quantity_available, UPPER('&keyword') AS keyword, ap.descrip
FROM ART_PIECE ap
WHERE UPPER(ap.descrip) LIKE '%' || UPPER('&keyword') || '%';
UNDEFINE keyword

--Find the average price of all art pieces, rounded to 2 decimal places:
SELECT ROUND(AVG(price), 2) AS average_price
FROM ART_PIECE;

--Find the total price of all orders, rounded to the nearest 10:
SELECT order_id, ROUND(total_price, -1) AS rounded_total_price
FROM ORDERS;

--Retrieve the dates of all orders with the time portion removed (truncated):
SELECT order_id, TRUNC(order_date) AS truncated_order_date
FROM ORDERS;

--Retrieve all orders placed in a specific month and year:
SELECT * FROM ORDERS
WHERE EXTRACT(YEAR FROM order_date) = 2023
  AND EXTRACT(MONTH FROM order_date) = 5;

--Find the total number of orders placed in each month of a specific year:
SELECT EXTRACT(MONTH FROM order_date) AS order_month, COUNT(*) AS total_orders
FROM ORDERS
WHERE EXTRACT(YEAR FROM order_date) = 2023
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY order_month;

--Calculate the total revenue from all orders:
SELECT SUM(total_price) AS total_revenue
FROM ORDERS;

--Find the average price of all art pieces:
SELECT AVG(price) AS average_price
FROM ART_PIECE;

--Count the number of orders for each customer:
SELECT customer_id, COUNT(*) AS order_count
FROM ORDERS
GROUP BY customer_id
ORDER BY order_count DESC;

--Find the maximum and minimum price of all art pieces:
SELECT MAX(price) AS max_price, MIN(price) AS min_price
FROM ART_PIECE;

--Retrieve the total revenue and the average revenue per order:
SELECT SUM(total_price) AS total_revenue, AVG(total_price) AS average_revenue_per_order
FROM ORDERS;

--Retrieve customers who have placed more than 2 orders:
SELECT customer_id, COUNT(*) AS order_count
FROM ORDERS
GROUP BY customer_id
HAVING COUNT(*) > 2
ORDER BY order_count DESC;

--Retrieve the total revenue for each customer with a total revenue greater than 1000:
SELECT o.customer_id, SUM(o.total_price) AS total_revenue
FROM ORDERS o
GROUP BY o.customer_id
HAVING SUM(o.total_price) > 1000
ORDER BY total_revenue DESC;

--Find the art pieces that have an average price more than 200 for each category:
SELECT apc.cat_id, AVG(ap.price) AS avg_price
FROM ART_PIECE ap
JOIN ART_PIECE_CATEGORY apc ON ap.art_piece_id = apc.ap_id
GROUP BY apc.cat_id
HAVING AVG(ap.price) > 200
ORDER BY avg_price DESC;

--INNER JOIN: Retrieve order details along with customer information:
SELECT o.order_id, o.order_date, o.total_price, c.first_name, c.last_name
FROM ORDERS o
JOIN CUSTOMER c ON o.customer_id = c.customer_id
ORDER BY o.order_date;

--LEFT JOIN: Retrieve all art pieces with their category information (including art pieces without any category):
SELECT ap.art_piece_id, ap.art_piece_name, ap.price, c.category_id, c.descrip
FROM ART_PIECE ap
LEFT JOIN ART_PIECE_CATEGORY apc ON ap.art_piece_id = apc.ap_id
LEFT JOIN CATEGORY c ON apc.cat_id = c.category_id
ORDER BY ap.art_piece_id;

--RIGHT JOIN: Retrieve all categories with their art pieces (including categories without any art pieces):
SELECT ap.art_piece_id, ap.art_piece_name, ap.price, c.category_id, c. descrip
FROM ART_PIECE ap
RIGHT JOIN ART_PIECE_CATEGORY apc ON ap.art_piece_id = apc.ap_id
RIGHT JOIN CATEGORY c ON apc.cat_id = c.category_id
ORDER BY c.category_id;

--FULL OUTER JOIN: Retrieve all art pieces and categories with their relationships, including art pieces without categories and categories without art pieces:
SELECT ap.art_piece_id, ap.art_piece_name, ap.price, c.category_id, c. descrip
FROM ART_PIECE ap
FULL OUTER JOIN ART_PIECE_CATEGORY apc ON ap.art_piece_id = apc.ap_id
FULL OUTER JOIN CATEGORY c ON apc.cat_id = c.category_id
ORDER BY ap.art_piece_id, c.category_id;

--Find customers who have placed orders with a total price greater than the average total price of all orders:
SELECT *
FROM CUSTOMER c
WHERE EXISTS (
    SELECT 1
    FROM ORDERS o
    WHERE o.customer_id = c.customer_id
    AND o.total_price > (
        SELECT AVG(total_price)
        FROM ORDERS
    )
);

--Retrieve the art pieces that have never been ordered:
SELECT *
FROM ART_PIECE ap
WHERE ap.art_piece_id NOT IN (
    SELECT DISTINCT od.art_piece_id
    FROM ORDER_DETAIL od
);

--Retrieve customers who have placed more than 3 orders:
SELECT *
FROM CUSTOMER c
WHERE (
    SELECT COUNT(*)
    FROM ORDERS o
    WHERE o.customer_id = c.customer_id
) > 3;

-- Retrieve specific order details with customer information
SELECT order_id, order_date, total_price, first_name, last_name
FROM order_customer_details;

-- Retrieve specific order details with customer information
SELECT order_id, order_date, total_price, first_name, last_name
FROM order_customer_details;

-- Retrieve selected details of line art pieces
SELECT art_piece_id, art_piece_name, price, thickness
FROM line_art_details;
