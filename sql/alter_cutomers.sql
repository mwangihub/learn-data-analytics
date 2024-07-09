-- Create a new table with the desired column name

-- CREATE TABLE new_customers (
--     customer_code character(6) NOT NULL PRIMARY KEY,
--     customer_name character varying(40) NOT NULL,
--     customer_city character varying(35),
--     working_area character varying(35) NOT NULL,
--     customer_country character varying(20) NOT NULL,
--     grade numeric,
--     opening_amt numeric(12,2) NOT NULL,
--     receive_amt numeric(12,2) NOT NULL,
--     payment_amt numeric(12,2) NOT NULL,
--     outstanding_amt numeric(12,2) NOT NULL,
--     phone_no character(17) NOT NULL
-- );

-- -- Copy data from old table to new table
-- INSERT INTO new_customers (
--     customer_code,
--     customer_name,
--     customer_city,
--     working_area,
--     customer_country,
--     grade,
--     opening_amt,
--     receive_amt,
--     payment_amt,
--     outstanding_amt,
--     phone_no
-- )
-- SELECT
--     cust_code,
--     cust_name,
--     cust_city,
--     working_area,
--     cust_country,
--     grade,
--     opening_amt,
--     receive_amt,
--     payment_amt,
--     outstanding_amt,
--     phone_no
-- FROM customers;

-- Drop the old table
-- DROP TABLE customers;

-- Rename the new table to the original table name
ALTER TABLE new_customers RENAME TO customers;


