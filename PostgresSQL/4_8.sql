SELECT customer_id,customer_name,COUNT(customer_id) as order_count
FROM customer NATURAL JOIN ordert
GROUP BY customer_id,customer_name
ORDER BY COUNT(customer_id) DESC
LIMIT 3;
