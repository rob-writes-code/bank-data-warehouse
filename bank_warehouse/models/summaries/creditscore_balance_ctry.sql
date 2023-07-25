SELECT 
    SUM(accounts.balance) AS total_balance,
    customers.geography,
    ROUND(AVG(customers.creditscore), 2) AS avg_credit_score,
    ROUND(AVG(customers.satisfactionscore), 4) AS avg_satisfactionscore
FROM {{ ref('accounts') }}
JOIN {{ ref('customers') }} ON accounts.customerid = customers.customerid
GROUP BY customers.geography