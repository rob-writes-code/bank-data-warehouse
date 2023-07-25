
  create view "mydb"."bank_warehouse"."creditscore_balance_ctry__dbt_tmp"
    
    
  as (
    SELECT 
    SUM(accounts.balance) AS total_balance,
    customers.geography,
    ROUND(AVG(customers.creditscore), 2) AS avg_credit_score,
    ROUND(AVG(customers.satisfactionscore), 4) AS avg_satisfactionscore
FROM "mydb"."bank_warehouse"."accounts"
JOIN "mydb"."bank_warehouse"."customers" ON accounts.customerid = customers.customerid
GROUP BY customers.geography
  );