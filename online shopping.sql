SELECT * FROM awesome.`online shopping dataset`;

-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Retrieve all columns for transactions where the "Coupon_Status" is 'Clicked'.
SELECT *
FROM awesome.`online shopping dataset`
WHERE Coupon_Status = 'Clicked';

-- Find the total quantity and average price of products purchased in each month.
SELECT Month, SUM(Quantity) AS TotalQuantity, AVG(Avg_Price) AS AvgPrice
FROM awesome.`online shopping dataset`
GROUP BY Month;

-- List the unique products that have been purchased.
SELECT DISTINCT Product_Description
FROM awesome.`online shopping dataset`;

-- Calculate the total offline and online spend for each month.
SELECT Month, SUM(Offline_Spend) AS TotalOfflineSpend, SUM(Online_Spend) AS TotalOnlineSpend
FROM awesome.`online shopping dataset`
GROUP BY Month;

-- Retrieve transactions where the Discount percentage is greater than 15%.
SELECT *
FROM awesome.`online shopping dataset`
WHERE Discount_pct > 15;
-- Count the number of transactions in the dataset.
SELECT COUNT(*) AS TransactionCount FROM awesome.`online shopping dataset`;

-- Find the total online spend for each product category.
SELECT Product_Category, SUM(Online_Spend) AS TotalOnlineSpend
FROM awesome.`online shopping dataset`
GROUP BY Product_Category;

-- Get the average tenure of customers.
SELECT AVG(Tenure_Months) AS AverageTenure FROM awesome.`online shopping dataset`;

-- List the unique coupon codes used in transactions.
SELECT DISTINCT Coupon_Code FROM awesome.`online shopping dataset`;

-- Calculate the total revenue (Online Spend + Offline Spend) for each month.
SELECT Month, SUM(Online_Spend + Offline_Spend) AS TotalRevenue
FROM awesome.`online shopping dataset`
GROUP BY Month;
-- Explore the distribution of transaction quantities.
SELECT MIN(Quantity) AS MinQuantity, MAX(Quantity) AS MaxQuantity, AVG(Quantity) AS AvgQuantity, COUNT(*) AS TransactionCount
FROM awesome.`online shopping dataset`;

-- Find the top-selling products (based on quantity sold).
SELECT Product_Description, SUM(Quantity) AS TotalQuantitySold
FROM awesome.`online shopping dataset`
GROUP BY Product_Description
ORDER BY TotalQuantitySold DESC
LIMIT 5;

-- Identify the months with the highest and lowest online spending.
SELECT Month, SUM(Online_Spend) AS TotalOnlineSpend
FROM awesome.`online shopping dataset`
GROUP BY Month
ORDER BY TotalOnlineSpend DESC
LIMIT 1;

-- Check the distribution of tenure months for customers.
SELECT Tenure_Months, COUNT(*) AS CustomerCount
FROM awesome.`online shopping dataset`
GROUP BY Tenure_Months
ORDER BY Tenure_Months;

-- Explore the average price of products in each category.
SELECT Product_Category, AVG(Avg_Price) AS AvgPrice
FROM awesome.`online shopping dataset`
GROUP BY Product_Category;

-- Explore the relationship between delivery charges and online spend.
SELECT Delivery_Charges, AVG(Online_Spend) AS AvgOnlineSpend
FROM awesome.`online shopping dataset`
GROUP BY Delivery_Charges;










