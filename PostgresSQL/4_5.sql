SELECT C.customer_id,C.customer_name,COUNT(O.customer_id) as number_of_orders
FROM customer C INNER JOIN ordert O 
ON C.customer_id = O.customer_id
GROUP BY C.customer_id
ORDER BY COUNT(O.customer_id) DESC;