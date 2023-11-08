--Solution 1
WITH count_product AS (
	SELECT product.product_id , COUNT(product.product_id) , product.product_description
	FROM product INNER JOIN order_line
	ON product.product_id = order_line.product_id
	GROUP BY product.product_id
)

SELECT product_id,product_description
FROM count_product
WHERE count_product.count = (SELECT MAX(count_product.count)
	  						FROM count_product);

--Solution 2
SELECT product_id,product_description
FROM product NATURAL JOIN order_line
GROUP BY product_id,product_description
HAVING COUNT(product_id) = (SELECT COUNT(product_id)
						  FROM order_line
						  GROUP BY product_id
						  LIMIT 1)

--Solution 3
SELECT P.product_id, P.product_description
FROM product P NATURAL JOIN order_line OL
GROUP BY P.product_id, P.product_description
HAVING COUNT(P.product_id) >= ALL(
    SELECT COUNT(product_id) FROM order_line
    GROUP BY product_id
);