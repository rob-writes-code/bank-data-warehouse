
  create view "mydb"."bank_warehouse"."total_balance__dbt_tmp"
    
    
  as (
    SELECT SUM(balance) AS total_balance 
FROM "mydb"."bank_warehouse"."accounts"
  );