SELECT 
    *
FROM
    sales.markets;

SELECT 
    SUM(sales_amount)
FROM
    transactions
WHERE
    market_code = 'Mark001';
    
SELECT DISTINCT
    product_code
FROM
    transactions
WHERE
    market_code = 'Mark001';

SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020
        AND transactions.market_code = 'Mark008';