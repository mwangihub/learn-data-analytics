-- -- Check alter_customers.sql


-- CREATE TABLE IF NOT EXISTS public.new_orders (
--     order_num numeric(6,0) NOT NULL PRIMARY KEY,
--     order_amount numeric(12,2) NOT NULL,
--     advance_amount numeric(12,2) NOT NULL,
--     order_date DATE NOT NULL, 
--     customer_code CHAR(6) NOT NULL REFERENCES public.customers ("customer_code"),
--     agent_code character(6) NOT NULL REFERENCES public.agents ("agent_code"),
--     order_description character(60) NOT NULL
-- );


-- -- Copy data from old table to new table
-- INSERT INTO new_orders (
--     order_num,
--     order_amount,
--     advance_amount,
--     order_date,
--     customer_code,
--     agent_code,
--     order_description
-- )
-- SELECT
--     "ORDER_NUM",
--     "ORDER_AMOUNT",
--     "ADVANCE_AMOUNT",
--     "ORDER_DATE",
--     "CUSTOMER_CODE",
--     "AGENT_CODE",
--     "ORDER_DESCRIPTION"
    
-- FROM orders;

-- -- Drop the old table
-- DROP TABLE orders;

-- -- Rename the new table to the original table name
-- ALTER TABLE new_orders RENAME TO orders;

SELECT * FROM orders;