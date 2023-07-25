
  
    

  create  table "mydb"."bank_warehouse"."accounts__dbt_tmp"
  
  
    as
  
  (
    

SELECT
    cardtype,
    balance,
    pointearned,
    customerid
FROM mydb.public.raw_banking
  );
  