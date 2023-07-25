{{ config(
    materialized = 'table',
)}}

SELECT
    cardtype,
    balance,
    pointearned,
    customerid
FROM {{ source("raw", "raw_banking") }}