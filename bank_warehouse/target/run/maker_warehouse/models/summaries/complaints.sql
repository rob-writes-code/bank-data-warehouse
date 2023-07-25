
  create view "mydb"."bank_warehouse"."complaints__dbt_tmp"
    
    
  as (
    SELECT 
    ROUND(AVG(age), 1) AS avg_age,
    complain, 
    exited
FROM "mydb"."bank_warehouse"."customers"
GROUP BY complain, exited
  );