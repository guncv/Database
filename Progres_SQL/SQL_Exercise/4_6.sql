WITH customer_order_count as (
	SELECT C.customer_id , C.customer_name , COUNT(O.customer_id) as number_of_orders
	FROM customer C , ordert O
	WHERE C.customer_id = O.customer_id
	GROUP BY C.customer_id
	ORDER BY number_of_orders DESC
)

SELECT customer_id,customer_name
FROM customer_order_count 
WHERE number_of_orders = (SELECT MAX(number_of_orders)
	  FROM customer_order_count)