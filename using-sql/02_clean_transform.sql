-- transform raw staging data into 3 separate dimension table
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers AS 		-- creates the table for unique 'customers'
SELECT DISTINCT ON (customer_id)	-- 'DISTINCT ON (customer_id)' makes sure we only take ids that appear only once and from one country
					customer_id, country    -- columns from staging_retail raw table
FROM staging_retail
WHERE customer_id IS NOT NULL 	-- line 10 and 11 makes sure we don't get any null ids
  AND customer_id != ''		
ORDER BY customer_id;

ALTER TABLE customers ADD CONSTRAINT pk_customers PRIMARY KEY (customer_id);/* sets 'customer_id' as primary key
for the customers table */

SELECT COUNT(*) FROM customers;
