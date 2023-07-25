SELECT 
    SUM(accounts.balance) AS total_balance,
    customers.geography,
    ROUND(AVG(customers.creditscore), 2) AS avg_credit_score
FROM "mydb"."bank_warehouse"."accounts"
JOIN "mydb"."bank_warehouse"."customers" ON accounts.customerid = customers.customerid
GROUP BY customers.geography