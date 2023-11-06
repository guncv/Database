WITH max_count_order AS (
	SELECT C.customer_id,C.customer_name,COUNT(O.order_id) as number_of_order
	FROM customer C,ordert O
	WHERE C.customer_id = O.customer_id
	GROUP BY C.customer_id
)

SELECT customer_id,customer_name
FROM max_count_order
WHERE number_of_order = (SELECT MAX(number_of_order)
						FROM max_count_order)

