-- Solution 1
SELECT customer_id,customer_name 
FROM customer NATURAL JOIN ordert
GROUP BY customer_id
HAVING  COUNT(customer_id) = (SELECT COUNT(customer_id)
						   FROM ordert
						   GROUP BY customer_id
						   ORDER BY COUNT(customer_id) DESC
						   LIMIT 1);

-- Solution 2
WITH count_order AS (
	SELECT C.customer_id,C.customer_name,COUNT(O.customer_id) as number_of_orders
	FROM customer C INNER JOIN ordert O 
	ON C.customer_id = O.customer_id
	GROUP BY C.customer_id
	ORDER BY COUNT(O.customer_id) DESC
)

SELECT customer_id,customer_name
FROM count_order
WHERE number_of_orders = (SELECT MAX(number_of_orders)
						 FROM count_order);
