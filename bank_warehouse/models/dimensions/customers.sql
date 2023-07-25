{{ config(
    materialized = 'table',
)}}

SELECT
    customerid,
    surname,
    gender,
    age,
    geography,
    tenure,
    estimatedsalary,
    isactivemember,
    exited,
    complain,
    satisfactionscore,
    numofproducts,
    hascrcard,
    creditscore
FROM {{ source("raw", "raw_banking") }}