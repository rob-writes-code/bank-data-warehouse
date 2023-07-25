SELECT SUM(estimatedsalary) AS total_estimated_salaries
FROM {{ ref('customers') }}