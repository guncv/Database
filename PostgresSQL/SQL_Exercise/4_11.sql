WITH count_order AS (
	SELECT O.customer_id , COUNT(O.order_id) as count_order
	FROM customer C, ordert O
	GROUP BY O.customer_id		
)

SELECT C.customer_id,C.customer_name
FROM customer C LEFT JOIN count_order O
ON C.customer_id = O.customer_id
WHERE count_order IS NULL;