Lab 2
SELECT * FROM students WHERE age >= 35 AND age <= 45
LIMIT 10

SELECT * FROM students WHERE age > 25 AND first_name LIKE '%th%'
ORDER BY id DESC, first_name DESC
OFFSET 20
LIMIT 10

SELECT *  FROM  students WHERE Age IS NOT NULL
ORDER BY Age DESC
LIMIT 10

SELECT * FROM students WHERE Age = 45 AND last_name LIKE '%n%'

PRODUCTS
SELECT * FROM products WHERE sale_price < price

SELECT * FROM products WHERE sale_price <price remaining_quantity != 0
ORDER BY sale_price ASC

SELECT * FROM products WHERE price > 25 AND price < 50 AND sale_price IS NOT NULL
