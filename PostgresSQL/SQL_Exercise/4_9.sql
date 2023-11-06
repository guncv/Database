SELECT DISTINCT C.customer_id,C.customer_name
FROM customer C INNER JOIN ordert O
ON C.customer_id = O.customer_id
WHERE O.order_date >= '2020-01-10' AND O.order_date <= '2020-01-15'