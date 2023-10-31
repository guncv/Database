SELECT postal_code,COUNT(postal_code) as customer_count
FROM customer
GROUP BY postal_code
ORDER BY customer_count DESC;