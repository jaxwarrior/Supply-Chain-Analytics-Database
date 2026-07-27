/*
Project: Supply Chain Analytics using MySQL
Dataset: DataCo Supply Chain Dataset
Author: Jason Joseph Peters
Description: SQL analysis of sales, customers, products, shipping, and supply chain KPIs.
*/


USE supply_chain_portfolio;

-- ==========================================
-- SUPPLY CHAIN ANALYTICS USING MYSQL
-- DataCo Supply Chain Dataset
-- ==========================================

-- Query 1: Total Records
SELECT COUNT(*) AS Total_Records
FROM datacosupplychaindataset;

-- Query 2: Total Orders
SELECT COUNT(Order Id) AS Total_Orders
FROM datacosupplychaindataset;

-- Query 3: Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM datacosupplychaindataset;

-- Query 4: Average Sales
SELECT AVG(Sales) AS Average_Sales
FROM datacosupplychaindataset;

-- Query 5: Average Profit Ratio
SELECT AVG(Order Item Profit Ratio) AS Average_Profit_Ratio
FROM datacosupplychaindataset;

-- Query 6: Total Customers
SELECT COUNT(DISTINCT Customer Id) AS Total_Customers
FROM datacosupplychaindataset;

-- Query 7: Orders by Customer Segment
SELECT Customer Segment,
       COUNT(*) AS Total_Orders
FROM datacosupplychaindataset
GROUP BY Customer Segment;

-- Query 8: Sales by Customer Segment
SELECT Customer Segment,
       SUM(Sales) AS Total_Sales
FROM datacosupplychaindataset
GROUP BY Customer Segment
ORDER BY Total_Sales DESC;

-- Query 9: Top 10 Products by Sales
SELECT Product Name,
       SUM(Sales) AS Total_Sales
FROM datacosupplychaindataset
GROUP BY Product Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 10: Top 10 Categories by Sales
SELECT Category Name,
       SUM(Sales) AS Total_Sales
FROM datacosupplychaindataset
GROUP BY Category Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 11: Sales by Department
SELECT Department Name,
       SUM(Sales) AS Total_Sales
FROM datacosupplychaindataset
GROUP BY Department Name
ORDER BY Total_Sales DESC;

-- Query 12: Orders by Market
SELECT Market,
       COUNT(*) AS Total_Orders
FROM datacosupplychaindataset
GROUP BY Market
ORDER BY Total_Orders DESC;

-- Query 13: Sales by Market
SELECT Market,
       SUM(Sales) AS Total_Sales
FROM datacosupplychaindataset
GROUP BY Market
ORDER BY Total_Sales DESC;

-- Query 14: Top 10 Countries by Orders
SELECT Order Country,
       COUNT(*) AS Total_Orders
FROM datacosupplychaindataset
GROUP BY Order Country
ORDER BY Total_Orders DESC
LIMIT 10;

-- Query 15: Top 10 Countries by Sales
SELECT Order Country,
       SUM(Sales) AS Total_Sales
FROM datacosupplychaindataset
GROUP BY Order Country
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 16: Delivery Status Summary
SELECT Delivery Status,
       COUNT(*) AS Total_Deliveries
FROM datacosupplychaindataset
GROUP BY Delivery Status;

-- Query 17: Late Delivery Risk
SELECT Late_delivery_risk,
       COUNT(*) AS Total_Orders
FROM datacosupplychaindataset
GROUP BY Late_delivery_risk;

-- Query 18: Shipping Mode Usage
SELECT Shipping Mode,
       COUNT(*) AS Total_Shipments
FROM datacosupplychaindataset
GROUP BY Shipping Mode
ORDER BY Total_Shipments DESC;

-- Query 19: Average Actual Shipping Days
SELECT AVG(Days for shipping (real)) AS Avg_Actual_Shipping_Days
FROM datacosupplychaindataset;

-- Query 20: Average Scheduled Shipping Days
SELECT AVG(Days for shipment (scheduled)) AS Avg_Scheduled_Shipping_Days
FROM datacosupplychaindataset;

-- Query 21: Order Status Summary
SELECT Order Status,
       COUNT(*) AS Total_Orders
FROM datacosupplychaindataset
GROUP BY Order Status;

-- Query 22: Top 10 Cities by Sales
SELECT Order City,
       SUM(Sales) AS Total_Sales
FROM datacosupplychaindataset
GROUP BY Order City
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 23: Top 10 States by Sales
SELECT Order State,
       SUM(Sales) AS Total_Sales
FROM datacosupplychaindataset
GROUP BY Order State
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 24: Total Quantity Sold
SELECT SUM(Order Item Quantity) AS Total_Quantity_Sold
FROM datacosupplychaindataset;

-- Query 25: Average Product Price
SELECT AVG(Product Price) AS Average_Product_Price
FROM datacosupplychaindataset;
