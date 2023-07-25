
  create view "mydb"."bank_warehouse"."salary_vs_cardtype__dbt_tmp"
    
    
  as (
    SELECT 
    accounts.cardtype,
    ROUND(AVG(customers.estimatedsalary), 2) AS avg_customer_salary
FROM "mydb"."bank_warehouse"."accounts"
JOIN "mydb"."bank_warehouse"."customers" ON accounts.customerid = customers.customerid
GROUP BY cardtype
  );