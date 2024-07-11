SELECT *
FROM customers
ORDER BY customer_id;

SELECT *
FROM customers_log;

CREATE TRIGGER customer_updated
BEFORE UPDATE ON customers
FOR EACH ROW
EXECUTE PROCEDURE log_customers_change();

UPDATE customers
SET first_name = 'Colin'
WHERE customer_id = 1;

SELECT *
FROM customers
ORDER BY customer_id;

SELECT *
FROM customers_log;

UPDATE customers
SET home_phone = 000-555-0000
WHERE customer_id = 1;

SELECT *
FROM customers
ORDER BY customer_id;

SELECT *
FROM customers_log;