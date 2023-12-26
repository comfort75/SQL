SELECT * FROM diadem.`housing prices`;

-- Handling Missing Values.
SELECT * FROM diadem.`housing prices` WHERE SquareFeet IS NULL OR Bedrooms IS NULL OR Bathrooms IS NULL OR Neighborhood IS NULL OR YearBuilt IS NULL OR Price IS NULL;

-- Identify duplicates.
SELECT *, COUNT(*) FROM diadem.`housing prices` GROUP BY SquareFeet, Bedrooms, Bathrooms, Neighborhood, YearBuilt, Price HAVING COUNT(*) > 1;

-- Retrieve all data.
SELECT * FROM diadem.`housing prices`;

-- Find the average price of houses.
SELECT AVG(Price) AS AveragePrice FROM diadem.`housing prices`;

-- Find the highest and lowest prices.
SELECT MAX(Price) AS HighestPrice, MIN(Price) AS LowestPrice FROM diadem.`housing prices`;

-- Count the number of houses in each neighborhood.
SELECT Neighborhood, COUNT(*) AS NumberOfHouses FROM diadem.`housing prices` GROUP BY Neighborhood;

-- Calculate the average price for each number of bedrooms.
SELECT Bedrooms, AVG(Price) AS AveragePrice FROM diadem.`housing prices` GROUP BY Bedrooms;

-- Find the newest and oldest houses.
SELECT MAX(YearBuilt) AS NewestYearBuilt, MIN(YearBuilt) AS OldestYearBuilt FROM diadem.`housing prices`;

-- Filter houses with more than 3 bedrooms and 2 bathrooms.
SELECT * FROM diadem.`housing prices` WHERE Bedrooms > 3 AND Bathrooms > 2;

-- Calculate the total price for each neighborhood.
SELECT Neighborhood, SUM(Price) AS TotalPrice FROM diadem.`housing prices` GROUP BY Neighborhood;

-- Calculate the average price of the houses.
SELECT AVG(Price) AS AveragePrice FROM diadem.`housing prices`;

-- Find the highest priced house and its details
SELECT * FROM diadem.`housing prices` ORDER BY Price DESC LIMIT 1;

-- Count the number of houses in each neighborhood. 
SELECT Neighborhood, COUNT(*) AS HouseCount FROM diadem.`housing prices` GROUP BY Neighborhood;

-- Retrieve houses built after the year 2000.
SELECT * FROM diadem.`housing prices` WHERE YearBuilt > 2000;

-- Calculate the average price for houses with 3 bedrooms.
SELECT AVG(Price) AS AveragePrice FROM diadem.`housing prices` WHERE Bedrooms = 3;

-- Find houses with more than 2 bathrooms and built before 1990.
SELECT * FROM diadem.`housing prices` WHERE Bathrooms > 2 AND YearBuilt < 1990;

-- Sort the houses by the number of bedrooms in descending order.
SELECT * FROM diadem.`housing prices` ORDER BY Bedrooms DESC;


--    THANK YOU









