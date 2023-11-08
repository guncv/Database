--Solution 1
SELECT C.customer_id,C.customer_name
FROM customer C LEFT JOIN ordert O
ON C.customer_id = O.customer_id
WHERE O.order_id IS NULL
ORDER BY C.customer_id ASC;

--Solution 2
SELECT customer_id,customer_name
FROM customer
WHERE NOT EXISTS(
	SELECT *
	FROM ordert
	WHERE customer.customer_id = ordert.customer_id
)