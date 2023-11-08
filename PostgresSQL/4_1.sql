SELECT postal_code,COUNT(postal_code) as customer_numbers
FROM customer
GROUP BY postal_code
ORDER BY customer_numbers DESC;