SELECT AVG(line_items.price * line_items.quantity), name FROM products
INNER JOIN line_items ON products.id = line_items.product_id
WHERE  name ='Lightweight Marble Gloves'
GROUP BY name
ORDER BY avg
