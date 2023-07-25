SELECT SUM(balance) AS total_balance 
FROM {{ ref('accounts') }}