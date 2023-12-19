-- Cleaning data in SQL Queries

SELECT * FROM project1.`global education dataset`;

-- Convert Latitude and Longitude to DECIMAL if needed
ALTER TABLE `project1`.`global education dataset`
MODIFY Latitude DECIMAL(9,6),
MODIFY Longitude DECIMAL(9,6);

-- Remove rows where Completion_Rate_Primary_Male or Completion_Rate_Primary_Female is missing
DELETE FROM `project1`.`global education dataset`
WHERE Completion_Rate_Primary_Male IS NULL OR Completion_Rate_Primary_Female IS NULL;

-- Convert Birth_Rate from string to decimal
UPDATE `project1`.`global education dataset`
SET Birth_Rate = CAST(Birth_Rate AS DECIMAL(5,2));


-- Set a constraint on Birth_Rate (example: must be between 0 and 100)
ALTER TABLE `project1`.`global education dataset`
ADD CONSTRAINT chk_birth_rate_range CHECK (Birth_Rate >= 0 AND Birth_Rate <= 100);


-- Calculate the average Birth_Rate
SELECT AVG(Birth_Rate) AS Avg_Birth_Rate
FROM `project1`.`global education dataset`;

-- Calculate average age based on birth rate
UPDATE `project1`.`global education dataset`
SET `Average_Age` = 100 / (`Birth_Rate` + 1);
















