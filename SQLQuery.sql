select * from [gas_sales_excel_file(Random Data)]

/*-------------- Home -----------------*/
SELECT sum(total_price) as 'Total Revenue'
from [gas_sales_excel_file(Random Data)]

SELECT sum(quantity) as 'Total Quantity'
from [gas_sales_excel_file(Random Data)]

SELECT AVG(total_price) as 'AVG Total Price'
from [gas_sales_excel_file(Random Data)]

SELECT AVG(quantity) as 'AVG Total Quantity'
from [gas_sales_excel_file(Random Data)]

select DATENAME(DW,order_date) as 'Day',SUM(total_price) as 'Total Price'
from [gas_sales_excel_file(Random Data)]
group by DATENAME(DW,order_date)

select DATENAME(MONTH,order_date) as 'Month',SUM(total_price) as 'Total Price'
from [gas_sales_excel_file(Random Data)]
group by DATENAME(MONTH,order_date)

SELECT
    fuel_type,
    SUM(total_price) AS 'Total Revenue',
    CONCAT(
        CAST(SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM [gas_sales_excel_file(Random Data)]) AS DECIMAL(10, 2)),
		'%') AS PCT
FROM [gas_sales_excel_file(Random Data)]
GROUP BY fuel_type;

SELECT
    payment_method,
    SUM(total_price) AS 'Total Revenue',
    CONCAT(
        CAST(SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM [gas_sales_excel_file(Random Data)]) AS DECIMAL(10, 2)),
		'%') AS PCT
FROM [gas_sales_excel_file(Random Data)]
GROUP BY payment_method;

/*--------------Best / Worst-----------------*/
select top 3 fuel_type, sum(total_price) as Total_Revenue
from [gas_sales_excel_file(Random Data)]
group by fuel_type
order by Total_Revenue desc

select top 3 fuel_type, sum(total_price) as Total_Revenue
from [gas_sales_excel_file(Random Data)]
group by fuel_type
order by Total_Revenue

select top 3 fuel_type, sum(quantity) as Total_Quantity
from [gas_sales_excel_file(Random Data)]
group by fuel_type
order by Total_Quantity desc

select top 3 fuel_type, sum(quantity) as Total_Quantity
from [gas_sales_excel_file(Random Data)]
group by fuel_type
order by Total_Quantity

select fuel_type, sum(total_price) as Total_Price
from [gas_sales_excel_file(Random Data)]
group by fuel_type
order by Total_Price desc

select fuel_type, sum(quantity) as Total_Quantity
from [gas_sales_excel_file(Random Data)]
group by fuel_type
order by Total_Quantity desc