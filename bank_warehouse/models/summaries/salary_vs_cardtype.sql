SELECT 
    accounts.cardtype,
    ROUND(AVG(customers.estimatedsalary), 2) AS avg_customer_salary
FROM {{ ref('accounts') }}
JOIN {{ ref('customers') }} ON accounts.customerid = customers.customerid
GROUP BY cardtype