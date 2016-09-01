SELECT COUNT(*) FROM students WHERE first_name = 'Milton'

SELECT COUNT(*) AS groups, first_name
FROM students GROUP BY first_name
ORDER BY groups DESC, first_name



SELECT * FROM products WHERE price = (SELECT MAX(price) FROM products)

SELECT * FROM products WHERE price = (SELECT MIN(price) FROM products)

SELECT SUM(sale_price * remaining_quantity) AS total_value FROM products
