
  create view "mydb"."bank_warehouse"."customers_by_ctry__dbt_tmp"
    
    
  as (
    SELECT 
    SUM(accounts.balance) AS total_balance,
    customers.geography AS country,
    COUNT(customers) AS customer_count
FROM "mydb"."bank_warehouse"."accounts"
JOIN "mydb"."bank_warehouse"."customers" ON accounts.customerid = customers.customerid
GROUP BY customers.geography
  );