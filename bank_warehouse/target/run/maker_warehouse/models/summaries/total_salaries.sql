
  create view "mydb"."bank_warehouse"."total_salaries__dbt_tmp"
    
    
  as (
    SELECT SUM(estimatedsalary) AS total_estimated_salaries
FROM "mydb"."bank_warehouse"."customers"
  );