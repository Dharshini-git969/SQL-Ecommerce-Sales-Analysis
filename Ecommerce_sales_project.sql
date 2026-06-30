

SELECT *
FROM products
LIMIT 10;
SELECT
SUM(Price * Sales) AS Total_Revenue
FROM products;
SELECT
ProductName,
SUM(Sales) AS Total_Sales
FROM products
GROUP BY ProductName
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT
Category,
SUM(Price * Sales) AS Revenue
FROM products
GROUP BY Category
ORDER BY Revenue DESC;
SELECT
City,
SUM(Price * Sales) AS Revenue
FROM products
GROUP BY City
ORDER BY Revenue DESC;

SELECT
Category,
ROUND(AVG(Rating),2) AS Avg_Rating
FROM products
GROUP BY Category
ORDER BY Avg_Rating DESC;

SELECT
ProductName,
SUM(Sales) AS TotalSales,

RANK() OVER(
ORDER BY SUM(Sales) DESC
) AS SalesRank

FROM products

GROUP BY ProductName;