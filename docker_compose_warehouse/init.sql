CREATE TABLE IF NOT EXISTS raw_banking (
   RowNumber INTEGER,
   CustomerId BIGINT,
   Surname TEXT,
   CreditScore INTEGER,
   Geography TEXT,
   Gender TEXT,
   Age INTEGER,
   Tenure INTEGER,
   Balance NUMERIC,
   NumOfProducts INTEGER,
   HasCrCard INTEGER,
   IsActiveMember INTEGER,
   EstimatedSalary NUMERIC,
   Exited INTEGER,
   Complain INTEGER,
   SatisfactionScore INTEGER,
   CardType TEXT,
   PointEarned INTEGER
   );

DO
$do$
BEGIN
   IF (SELECT to_regclass('public.raw_banking') IS NULL OR (SELECT count(*) FROM raw_banking) = 0) THEN 
      COPY raw_banking FROM '/var/lib/postgresql/csvs/raw_banking.csv' DELIMITER ',' CSV HEADER;
   END IF;
END
$do$;
