-- Pizza Sales Data
-- Starting with KPIs

SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales
-- Total Revenue of Pizzas

SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS AVG_Order_Value
FROM pizza_sales
-- Average Value per Order

SELECT SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
-- Total of Pizzas Sold

SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
-- Total of Orders

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) /
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS AVG_Pizzas_per_Order
FROM pizza_sales
-- Average of Pizzas per Order

SELECT * 
 FROM pizza_sales;


SELECT DAYNAME('order_date') AS order_day, COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DAYNAME('order_date')
-- Daily Trend for Total Orders

HOURLY TREND
SELECT HOUR(order_time) AS order_time, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY HOUR(order_time)
-- Hourly Trend for Total Orders

SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL (10,2)) AS Total_Revenue,
CAST(SUM(total_price) * 100 /
(SELECT sum(total_price) from pizza_sales) AS DECIMAL (10,2)) AS Percentage_Revenue
 FROM pizza_sales
 GROUP BY pizza_category
 -- Percentage of Sales by Pizzas Categories

SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue, 
CAST(SUM(total_price) * 100 /
(SELECT sum(total_price) FROM pizza_sales) AS DECIMAL (10,2)) AS Percentage_Revenue
FROM pizza_sales
GROUP BY pizza_size
ORDER BY Percentage_revenue DESC
-- Percentage of Sales by Pizzas Sizes

SELECT pizza_category, SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_category
-- Total of Pizzas Sold by Categories

SELECT pizza_name, SUM(quantity) AS TOP5_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY top5_pizzas_sold DESC
LIMIT 5
-- Top 5 Best Sellers by Pizzas Categories

SELECT pizza_name, SUM(quantity) AS Bottom5_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Bottom5_pizzas_sold ASC
LIMIT 5
-- Bottom 5 Sellers by Pizzas Categories







