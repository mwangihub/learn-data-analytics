


CREATE TABLE IF NOT EXISTS public.orders
(
    "ORDER_NUM" numeric(6,0) NOT NULL PRIMARY KEY, 
    "ORDER_AMOUNT" numeric(12,2) NOT NULL, 
    "ADVANCE_AMOUNT" numeric(12,2) NOT NULL, 
    "ORDER_DATE" DATE NOT NULL, 
    "CUSTOMER_CODE" character(6) NOT NULL REFERENCES public.customers ("customer_code"), 
    "AGENT_CODE" CHAR(6) NOT NULL REFERENCES public.agents ("agent_code"), 
    "ORDER_DESCRIPTION" character(60) NOT NULL
);



SELECT * FROM orders;

-- DROP TABLE orders;