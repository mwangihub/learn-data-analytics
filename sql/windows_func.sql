-- Ranking Functions: ROW_NUMBER(), RANK(), DENSE_RANK()

-- SELECT customer_code, advance_amount,
--        ROW_NUMBER() OVER (ORDER BY advance_amount DESC) AS row_number,
--        RANK() OVER (ORDER BY advance_amount DESC) AS rank,
--        DENSE_RANK() OVER (ORDER BY advance_amount DESC) AS dense_rank
-- FROM orders;

-- ROW_NUMBER(): Assigns a unique sequential integer to rows 
--     within a partition of a result set, starting at 1 for 
--     the first row in each partition.
-- RANK(): Provides a rank to each row within the partition of 
--     a result set. Ranks may have gaps.
-- DENSE_RANK(): Similar to RANK(), but ranks are consecutive.

-------------------------------------------------------------------------------------

-- Aggregate Functions: SUM(), AVG(), COUNT(), MAX(), MIN()

SELECT customer_code, advance_amount,
       SUM(advance_amount) OVER (PARTITION BY customer_code) 
            AS total_advance,
       AVG(advance_amount) OVER (PARTITION BY customer_code) 
            AS average_advance
FROM orders
-- Narrow down to a specific customer
-- WHERE customer_code='C00007';

-- SELECT * FROM orders;

-- SUM(): Calculates the sum of an expression across all input 
--     rows for which the given expression returns a non-null value.
-- AVG(): Calculates the average value of a numeric column.