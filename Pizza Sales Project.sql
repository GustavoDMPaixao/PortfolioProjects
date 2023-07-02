-- SELECT SUM(total_price) as Total_Revenue
-- FROM pizza_sales

-- SELECT SUM(total_price) / COUNT(DISTINCT order_id) as AVG_Order_Value
-- FROM pizza_sales

-- SELECT SUM(quantity) as Total_Pizza_Sold
-- FROM pizza_sales

-- SELECT COUNT(DISTINCT order_id) as Total_Orders
-- FROM pizza_sales

-- SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) /
-- CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) as AVG_Pizzas_per_Order
-- FROM pizza_sales

-- SELECT * 
--  FROM pizza_sales;


-- DAILY TREND
-- SELECT DAYNAME('order_date') AS order_day, COUNT(DISTINCT order_id) AS total_orders
-- FROM pizza_sales
-- GROUP BY DAYNAME('order_date')

-- HOURLY TREND
-- SELECT HOUR(order_time) as order_time, COUNT(DISTINCT order_id) as Total_Orders
-- FROM pizza_sales
-- GROUP BY HOUR(order_time)

-- SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL (10,2)) AS Total_Revenue,
-- CAST(SUM(total_price) * 100 /
-- (SELECT sum(total_price) from pizza_sales) AS DECIMAL (10,2)) as Percentage_Revenue
--  FROM pizza_sales
--  GROUP BY pizza_category

-- SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue, 
-- CAST(SUM(total_price) * 100 /
-- (SELECT sum(total_price) FROM pizza_sales) AS DECIMAL (10,2)) AS Percentage_Revenue
-- FROM pizza_sales
-- GROUP BY pizza_size
-- ORDER BY Percentage_revenue DESC

-- SELECT pizza_category, SUM(quantity) AS Total_Pizzas_Sold
-- FROM pizza_sales
-- GROUP BY pizza_category

-- SELECT pizza_name, SUM(quantity) as TOP5_Pizzas_Sold
-- FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY top5_pizzas_sold DESC
-- LIMIT 5

-- SELECT pizza_name, SUM(quantity) as Bottom5_Pizzas_Sold
-- FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY Bottom5_pizzas_sold ASC
-- LIMIT 5








