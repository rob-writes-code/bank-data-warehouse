SELECT 
    numofproducts,
    ROUND(AVG(satisfactionscore), 1) AS avg_satisfactionscore
FROM {{ ref('customers') }}
GROUP BY numofproducts