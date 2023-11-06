WITH OrderedProducts AS (
    SELECT p.PRODUCT_ID, p.PRODUCT_DESCRIPTION, COUNT(ol.PRODUCT_ID) AS num_ordered
    FROM PRODUCT p
    INNER JOIN ORDER_LINE ol ON p.PRODUCT_ID = ol.PRODUCT_ID
    GROUP BY p.PRODUCT_ID, p.PRODUCT_DESCRIPTION
)

SELECT op.PRODUCT_ID, op.PRODUCT_DESCRIPTION
FROM OrderedProducts op
WHERE op.num_ordered = (SELECT MAX(num_ordered) FROM OrderedProducts);