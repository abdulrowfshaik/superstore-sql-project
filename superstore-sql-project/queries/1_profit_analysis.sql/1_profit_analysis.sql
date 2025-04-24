-- Query 1: Total profit by category
SELECT 
  Category, 
  ROUND(SUM(Profit), 2) AS TotalProfit
FROM superstore
GROUP BY Category
ORDER BY TotalProfit DESC;

-- Query 2: Top 5 profitable products
SELECT 
  Product_Name,
  ROUND(SUM(Profit), 2) AS ProductProfit
FROM superstore
GROUP BY Product_Name
ORDER BY ProductProfit DESC
LIMIT 5;