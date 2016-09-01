-- demo
-- 1- Select all the products that have orders and their orders
-- 2- Select all the products and their orders


SELECT * FROM products
INNER JOIN line_items ON line_items.product_id = products.id


--Lab 1


-- Write the following SQL Queries:
--
-- 1- Find the average line item total price for orders that were completed last month

SELECT AVG(line_items.price * line_items.quantity) AS average_total_price, products.name AS product_name FROM products
INNER JOIN line_items ON line_items.product_id = products.id
INNER JOIN orders ON orders.id = line_items.order_id
WHERE orders.completed_on BETWEEN '2016-01-01' AND '2016-02-01'
GROUP BY products.name
ORDER BY average_total_price DESC

-- 2- Select product titles and prices that sold last month and the lowest they were sold at.

SELECT products.name, MIN(line_items.price), COUNT(*) FROM line_items
WHERE orders.completed_on 
