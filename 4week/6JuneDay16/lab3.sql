
-- 1- Select all the products that have been purchased in the last year

SELECT products.name FROM orders
INNER JOIN line_items ON orders.id   = line_items.order_id
INNER JOIN products ON products.id = line_items.product_id
WHERE completed_on BETWEEN '2015-06-06' AND NOW()

-- 2- Select the top 10 products in terms of gross sales last year

SELECT SUM(line_items.price * line_items.quantity) AS gross_sale, products.name FROM orders
INNER JOIN line_items ON orders.id   = line_items.order_id
INNER JOIN products ON products.id = line_items.product_id
WHERE completed_on BETWEEN '2015-06-06' AND NOW()
GROUP BY products.name
ORDER BY gross_sale DESC
LIMIT 10

-- 3 - Select all the products that weren't purchased during the last year
SELECT products.name, MAX(orders.completed_on) AS max FROM products
LEFT JOIN line_items ON line_items.product_id = products.id
LEFT JOIN orders ON line_items.order_id = orders.id
WHERE orders.completed_on IS NULL OR orders.completed_on < NOW() - INTERVAL '9' month
GROUP BY products.name
ORDER BY max;
