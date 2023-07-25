CREATE TABLE customers_by_ctry_code (
    total_balance NUMERIC(15, 2),
    country_code TEXT,
    customer_count INT
)

INSERT INTO customers_by_ctry_code (
    total_balance,
    country_code,
    customer_count
) 
VALUES (
    (153123552.01, 'ES', 2477),
    (311332479.49, 'FR', 5014),
    (300402861.38, 'DE', 2509)
)