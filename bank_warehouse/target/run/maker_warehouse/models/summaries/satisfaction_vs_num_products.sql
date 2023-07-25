
  create view "mydb"."bank_warehouse"."satisfaction_vs_num_products__dbt_tmp"
    
    
  as (
    SELECT 
    numofproducts,
    ROUND(AVG(satisfactionscore), 1) AS avg_satisfactionscore
FROM "mydb"."bank_warehouse"."customers"
GROUP BY numofproducts
  );