use sakila;
SELECT * FROM sakila.payment;
SELECT 
    customer_id, 
    amount, 
    payment_date
FROM payment
WHERE payment_date > '2005-08-01'
  AND amount > 9.00
ORDER BY amount DESC;
SELECT 
    payment_id,
    customer_id,
    staff_id,
    amount
FROM payment
WHERE amount = 0.00
   OR (staff_id = 1 AND amount > 10.00)
ORDER BY customer_id ASC;