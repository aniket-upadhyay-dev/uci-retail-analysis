-- Get the data first in SQL
DROP TABLE IF EXISTS staging_retail;

/* create the staging table
( we're creating columns with 'TEXT' datatype to avoid any loading errors)
*/

CREATE TABLE staging_retail (
	invoice_no TEXT,
	stock_code TEXT,
	description TEXT,
	quantity TEXT,
	invoice_date TEXT,
	unit_price TEXT,
	customer_id TEXT,
	country TEXT	
);


