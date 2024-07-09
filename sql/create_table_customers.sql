



CREATE TABLE IF NOT EXISTS public.customers
(
    customer_code character(6) NOT NULL PRIMARY KEY,
    customer_name character varying(40) NOT NULL,
    customer_city character varying(35),
    working_area character varying(35) NOT NULL,
    customer_country character varying(20) NOT NULL,
    grade numeric,
    opening_amt numeric(12,2) NOT NULL,
    receive_amt numeric(12,2) NOT NULL,
    payment_amt numeric(12,2) NOT NULL,
    outstanding_amt numeric(12,2) NOT NULL,
    phone_no character(17) NOT NULL
    
    CONSTRAINT customers_agent_code_fkey FOREIGN KEY (agent_code)
    REFERENCES public.agents (agent_code)
);





SELECT * FROM customers;

-- Explanation

--     agent_code character(6): Defines the agent_code column as character(6) 
--             in both tables to ensure type consistency.
--     REFERENCES public.agents (agent_code): Specifies the foreign key constraint 
--             referencing the agent_code column in the agents table.

-- Here are a few things to check and correct:

-- Ensure that the data types of the foreign key column in the customers table 
--         and the referenced primary key column in the agents table are the same.
-- Make sure the primary key column in the agents table is defined correctly.