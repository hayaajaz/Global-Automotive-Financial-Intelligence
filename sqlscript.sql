create database car_project_db; 
use car_project_db;
show tables;
SELECT * FROM car_master LIMIT 5;
SELECT COUNT(*) FROM sales_transactions;
DESCRIBE car_master;
SELECT Dealer_ID, SUM(Revenue) AS Total_Revenue
FROM sales_transactions
GROUP BY Dealer_ID
ORDER BY Total_Revenue DESC;
SELECT c.Brand, SUM(s.Units_Sold) AS Total_Units
FROM sales_transactions s
JOIN car_master c ON s.Car_ID = c.Car_ID
GROUP BY c.Brand
ORDER BY Total_Units DESC;
SELECT s.Invoice_ID, s.Sale_Date, d.Dealer_Name, c.Brand, c.Model, s.Units_Sold, s.Revenue
FROM sales_transactions s
JOIN dealership_master d ON s.Dealer_ID = d.Dealer_ID
JOIN car_master c ON s.Car_ID = c.Car_ID
LIMIT 20;
SELECT * FROM car_master WHERE Engine_CC = 0;
