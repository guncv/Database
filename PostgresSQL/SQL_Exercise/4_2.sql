SELECT postal_code,COUNT(postal_code) as customer_count
FROM customer
GROUP BY postal_code
HAVING COUNT(postal_code) > 1
ORDER BY customer_count DESC;