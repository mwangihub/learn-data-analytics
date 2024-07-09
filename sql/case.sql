-- CASE

-- The CASE expression goes through conditions and returns a 
-- value when the first condition is met (like an if-then-else 
-- statement).

-- Once a condition is true, it will stop reading and return 
-- the result. If no conditions are true, it returns the value 
-- in the ELSE clause.

-- SELECT customer_code,
-- CASE
--   WHEN advance_amount < 1000 THEN 'Low Advance payment.'
--   WHEN advance_amount >= 1000 THEN 'HIGH Advance payment.'
-- ELSE
--   'Normal product'
-- END
-- FROM orders; 

-- To specify a column name, add an alias after the END keyword.
SELECT customer_code, advance_amount,
CASE
  WHEN advance_amount < 1000 THEN 'Low Advance payment.'
  WHEN advance_amount >= 1000 THEN 'HIGH Advance payment.'
ELSE
  'Normal product'
END AS "Advance Rate"
FROM orders
-- ORDER BY advance_amount DESC;
ORDER BY advance_amount ASC; 