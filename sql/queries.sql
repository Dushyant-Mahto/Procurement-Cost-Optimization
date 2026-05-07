SELECT 
SUM(Quantity * Negotiated_Price) AS Total_Spend
FROM procurement;

SELECT 
SUM((Unit_Price - Negotiated_Price) * Quantity) 
AS Total_Savings
FROM procurement;

SELECT 
Supplier,
SUM(Quantity * Negotiated_Price) AS Total_Spend
FROM procurement
GROUP BY Supplier
ORDER BY Total_Spend DESC;

SELECT 
Supplier,
SUM((Unit_Price - Negotiated_Price) * Quantity)
AS Savings
FROM procurement
GROUP BY Supplier
ORDER BY Savings DESC;

SELECT 
Supplier,
AVG(
julianday(Delivery_Date) - julianday(Order_Date)
) AS Avg_Delivery_Days
FROM procurement
WHERE Delivery_Date IS NOT NULL
GROUP BY Supplier
ORDER BY Avg_Delivery_Days;

SELECT 
Supplier,
AVG(
(Defective_Units * 100.0) / Quantity
) AS Defect_Rate
FROM procurement
GROUP BY Supplier
ORDER BY Defect_Rate DESC;

SELECT 
Item_Category,
SUM(Quantity * Negotiated_Price) AS Category_Spend
FROM procurement
GROUP BY Item_Category
ORDER BY Category_Spend DESC;

SELECT 
strftime('%Y-%m', Order_Date) AS Month,
SUM(Quantity * Negotiated_Price) AS Monthly_Spend
FROM procurement
GROUP BY Month
ORDER BY Month;

SELECT 
Order_Status,
COUNT(*) AS Total_Orders
FROM procurement
GROUP BY Order_Status;

SELECT 
Compliance,
COUNT(*) AS Supplier_Count
FROM procurement
GROUP BY Compliance;