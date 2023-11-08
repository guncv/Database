SELECT SUM(ordered_quantity * standard_price) as total_payment
FROM order_line NATURAL JOIN product
GROUP BY order_id
HAVING order_id = 3;