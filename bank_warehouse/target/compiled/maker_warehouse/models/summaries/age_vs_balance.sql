SELECT 
    customers.age,
    ROUND(AVG(accounts.balance), 2) AS avg_account_balance
FROM "mydb"."bank_warehouse"."accounts"
JOIN "mydb"."bank_warehouse"."customers" ON accounts.customerid = customers.customerid
GROUP BY customers.age