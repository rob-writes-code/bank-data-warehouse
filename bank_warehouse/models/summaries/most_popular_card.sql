SELECT 
    COUNT(*) AS amount_of_cardtype,
    cardtype
FROM {{ ref('accounts') }}
GROUP BY cardtype