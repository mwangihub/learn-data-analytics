-- In PostgreSQL, joins are used to combine rows from multiple tables based on a related column between them. 
-- Joins allow you to retrieve data that spans across multiple tables efficiently.

-- Types of Joins in PostgreSQL:

-- JOIN or INNER JOIN:
-- Returns rows when there is a MATCH in both tables based on the join condition.
-- Join customers to orders table, with specific columns

-- SELECT c.customer_code, c.customer_name, o.order_date
-- FROM customers c
-- INNER JOIN orders o
--     ON c.customer_code = o.customer_code;

-- LEFT JOIN
-- The LEFT JOIN keyword selects ALL records from the "left" table, and the matching 
-- records from the "right" table. The result is 0 records from the right side if there is no match.

-- SELECT *
-- FROM customers c
-- LEFT JOIN orders o
--     ON c.customer_code = o.customer_code;

-- FULL JOIN
-- The FULL JOIN keyword selects ALL records from both tables,
--  even if there is not a match. For rows with a match the values from
--   both tables are available, if there is not a match the empty fields will get the value NULL.

SELECT *
FROM customers c
FULL JOIN orders o
    ON c.customer_code = o.customer_code;