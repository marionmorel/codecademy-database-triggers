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

CREATE TRIGGER customer_insert
AFTER INSERT ON customers
FOR EACH STATEMENT
EXECUTE PROCEDURE log_customers_change();

INSERT INTO customers (first_name, last_name, email_address, home_phone, city, state_name, years_old)
VALUES ('Marion', 'Morel', 'marion.morel27@gmail.com', '202-555-1072', 'Greenville', 'South Carolina', 27);

INSERT INTO customers (first_name, last_name, email_address, home_phone, city, state_name, years_old)
VALUES ('Jordan', 'Gates', 'jordangates@email.com', '202-555-0032', 'Nashville', 'Tennessee', 62);

INSERT INTO customers (first_name, last_name, email_address, home_phone, city, state_name, years_old)
VALUES ('Jane', 'Doe', 'janedoe@gmail.com', '202-555-0087', 'New York City', 'New York', 45);

SELECT *
FROM customers
ORDER BY customer_id;

SELECT *
FROM customers_log;