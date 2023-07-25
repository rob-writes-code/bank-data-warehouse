SELECT 
    COUNT(*) AS amount_of_cardtype,
    cardtype
FROM "mydb"."bank_warehouse"."accounts"
GROUP BY cardtype