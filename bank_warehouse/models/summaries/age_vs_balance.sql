SELECT 
    customers.age,
    ROUND(AVG(accounts.balance), 2) AS avg_account_balance
FROM {{ ref('accounts') }}
JOIN {{ ref('customers') }} ON accounts.customerid = customers.customerid
GROUP BY customers.age