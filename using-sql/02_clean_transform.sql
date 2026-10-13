transform raw staging data into 3 separate dimension table
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

CREATE TABLE products AS	-- creates table named 'products'
WITH ranked_products AS(	
	SELECT stock_code, 
           COALESCE(NULLIF(description, ''), 'Unknown Product') AS description,
           unit_price,
	ROW_NUMBER() OVER(
        PARTITION BY stock_code
		ORDER BY(description IS NOT NULL AND description !='') DESC, 
        invoice_date DESC  -- make sure to grab rows where description is not null
	) AS rn
    
	FROM staging_retail
	WHERE stock_code IS NOT NULL
	AND stock_code != ''
)
SELECT stock_code, description, unit_price
FROM ranked_products
WHERE rn = 1;

SELECT * FROM products;
