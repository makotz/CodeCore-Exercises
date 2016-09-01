--1- Calculate how many items in stock we've ever had for products (remaining or sold) in the database.

SELECT name, SUM(remaining_quantity + line_items.quantity) AS total_product_count FROM products
INNER JOIN line_items ON products.id = line_items.product_id
GROUP BY name
ORDER BY total_product_count DESC

--2- Find the average order total price for all the orders in the system

SELECT AVG(price * quantity) FROM line_items
