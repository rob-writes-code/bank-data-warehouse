SELECT 
    numofproducts,
    ROUND(AVG(satisfactionscore), 1) AS avg_satisfactionscore
FROM "mydb"."bank_warehouse"."customers"
GROUP BY numofproducts