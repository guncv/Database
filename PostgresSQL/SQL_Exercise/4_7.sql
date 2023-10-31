WITH number_of_products as (
	SELECT P.product_id , P.product_description , SUM(O.ordered_quantity) as count_of_product
	FROM product P,order_line O
	WHERE P.product_id = O.product_id
	GROUP BY P.product_id 
	ORDER BY count_of_product DESC
)

SELECT product_id,product_description
FROM number_of_products
WHERE count_of_product = (SELECT MAX(count_of_product)
						 FROM number_of_products);
