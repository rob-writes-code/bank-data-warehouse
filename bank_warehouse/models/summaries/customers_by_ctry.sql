SELECT 
    SUM(accounts.balance) AS total_balance,
    customers.geography AS country,
    COUNT(customers) AS customer_count
FROM {{ ref('accounts') }}
JOIN {{ ref('customers') }} ON accounts.customerid = customers.customerid
GROUP BY customers.geography