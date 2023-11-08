SELECT product_id, product_description
FROM product NATURAL JOIN order_line
GROUP BY product_id
HAVING SUM(ordered_quantity) = (SELECT SUM(ordered_quantity)
						  FROM order_line
						  GROUP BY product_id
						  ORDER BY SUM(ordered_quantity) DESC
						  LIMIT 1)
ORDER BY SUM(ordered_quantity) DESC
