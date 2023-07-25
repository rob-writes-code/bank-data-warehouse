SELECT 
    ROUND(AVG(age), 1) AS avg_age,
    complain, 
    exited
FROM {{ ref('customers') }}
GROUP BY complain, exited