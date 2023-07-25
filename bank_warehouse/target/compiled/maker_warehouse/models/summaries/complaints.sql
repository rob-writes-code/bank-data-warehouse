SELECT 
    ROUND(AVG(age), 1) AS avg_age,
    complain, 
    exited
FROM "mydb"."bank_warehouse"."customers"
GROUP BY complain, exited