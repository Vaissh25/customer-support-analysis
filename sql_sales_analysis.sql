-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM Train;

-- Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM Train
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM Train
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top Customers
SELECT Customer_Name, SUM(Sales) AS Total_Sales
FROM Train
WHERE Customer_Name IS NOT NULL
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT
substr(Order_Date, 7, 4) || '-' || substr(Order_Date, 4, 2) AS Year_Month,
SUM(Sales) AS Total_Sales
FROM Train
GROUP BY Year_Month
ORDER BY Year_Month;
