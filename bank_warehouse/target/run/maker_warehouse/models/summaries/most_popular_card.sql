
  create view "mydb"."bank_warehouse"."most_popular_card__dbt_tmp"
    
    
  as (
    SELECT 
    COUNT(*) AS amount_of_cardtype,
    cardtype
FROM "mydb"."bank_warehouse"."accounts"
GROUP BY cardtype
  );