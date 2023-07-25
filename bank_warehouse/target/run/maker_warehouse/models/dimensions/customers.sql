
  
    

  create  table "mydb"."bank_warehouse"."customers__dbt_tmp"
  
  
    as
  
  (
    

SELECT
    customerid,
    surname,
    gender,
    age,
    geography,
    tenure,
    estimatedsalary,
    isactivemember,
    exited,
    complain,
    satisfactionscore,
    numofproducts,
    hascrcard,
    creditscore
FROM mydb.public.raw_banking
  );
  