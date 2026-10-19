-- All values describe synthetic transactions, not observed Saudi market performance.
-- Weighted price per sqm = total transaction value / total transacted area.
SELECT COUNT(*) AS transactions, ROUND(SUM(transaction_price_sar),2) AS total_value_sar,
       ROUND(AVG(transaction_price_sar),2) AS avg_price_sar,
       ROUND(SUM(transaction_price_sar)/NULLIF(SUM(area_sqm),0),2) AS weighted_price_per_sqm_sar
FROM transactions;

-- Annual market activity
SELECT SUBSTR(transaction_date,1,4) AS year, COUNT(*) AS transactions,
       ROUND(SUM(transaction_price_sar),2) AS value_sar,
       ROUND(AVG(transaction_price_sar),2) AS average_price_sar,
       ROUND(SUM(transaction_price_sar)/NULLIF(SUM(area_sqm),0),2) AS weighted_price_per_sqm_sar
FROM transactions GROUP BY 1 ORDER BY 1;

-- City comparison
SELECT city, COUNT(*) AS transactions, ROUND(SUM(transaction_price_sar),2) AS value_sar,
       ROUND(SUM(transaction_price_sar)/NULLIF(SUM(area_sqm),0),2) AS weighted_price_per_sqm_sar
FROM transactions GROUP BY city ORDER BY value_sar DESC;

-- Property mix
SELECT property_type, COUNT(*) AS transactions,
       ROUND(AVG(transaction_price_sar),2) AS avg_price_sar,
       ROUND(SUM(transaction_price_sar),2) AS value_sar
FROM transactions GROUP BY property_type ORDER BY value_sar DESC;

-- Financing split
SELECT financing_method, COUNT(*) AS transactions,
       ROUND(100.0*COUNT(*)/(SELECT COUNT(*) FROM transactions),2) AS pct_transactions,
       ROUND(SUM(transaction_price_sar),2) AS value_sar
FROM transactions GROUP BY financing_method ORDER BY transactions DESC;

-- Year-over-year change in transaction value
WITH annual AS (
 SELECT SUBSTR(transaction_date,1,4) AS year, SUM(transaction_price_sar) AS value_sar
 FROM transactions GROUP BY 1)
SELECT year, ROUND(value_sar,2) AS value_sar,
       ROUND(100.0*(value_sar/LAG(value_sar) OVER (ORDER BY year)-1),2) AS yoy_pct
FROM annual ORDER BY year;
