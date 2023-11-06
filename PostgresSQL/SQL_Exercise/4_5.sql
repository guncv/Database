SELECT C.customer_id, C.customer_name, COUNT(O.order_id) as number_of_orders
FROM customer C,ordert O
WHERE C.customer_id = O.customer_id
GROUP BY C.customer_id
ORDER BY number_of_orders DESC;