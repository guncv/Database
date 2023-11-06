WITH max_quantity AS (
	SELECT P.product_id,P.product_description,SUM(O.ordered_quantity) as sum_count
	FROM product P,order_line O
	WHERE P.product_id = O.product_id
	GROUP BY P.product_id
)

SELECT product_id,product_description 
FROM max_quantity 
WHERE sum_count = (SELECT MAX(sum_count)
				  FROM max_quantity)