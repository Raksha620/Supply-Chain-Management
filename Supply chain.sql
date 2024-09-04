-- PRODUCT WISE SALES

select `Product Name`,
sum(Price*`Quantity on Hand`) as TotalSales
from f_inventory_adjusted
group by `Product Name`
order by TotalSales Desc;

-- PRODUCT WISE SALES
select `Product Type`,
sum(`Quantity on Hand`) as Quantity
from f_inventory_adjusted
group by `Product Type`
order by Quantity Desc;

-- TOTAL INVENTORY
select sum(`Quantity on Hand`) as 
TotalInventory
from f_inventory_adjusted;

-- INVENTORY VALUE

select round(SUM(`Quantity on Hand` * `Cost Amount`))
as InventoryValue
from f_inventory_adjusted;

-- PURCHASE METHOD WISE SALES

Select E1.`Purchase Method`, ROUND (SUM(E2.PRICE*E2. `Quantity on Hand`)) AS SALES 
from f_sales AS E1
INNER JOIN f_inventory_adjusted AS E2
ON E1. `Cust Key`=E2.`Product Key`
GROUP BY `Purchase Method`
ORDER BY ROUND (SUM(E2.PRICE*E2.`Quantity on Hand`));

USE mahendra;
Select * FROM customer;
Select * FROM f_sales;
Select * FROM f_inventory_adjusted ;
Select * FROM d_store ;
Select * FROM d _geojson_us_counties ;
SELECT count(*) FROM CUSTOMER;

/*REGION WISE SALES*/

Select E1.`Cust Region`, ROUND (SUM(E2.PRICE*E2. `Quantity on Hand`)) AS SALES 
from customer AS E1
INNER JOIN f_inventory_adjusted AS E2
ON E1. `Cust Key`=E2.`Product Key`
GROUP BY `Cust Region`
ORDER BY ROUND (SUM(E2.PRICE*E2.`Quantity on Hand`));

-- STATE WISE SALES

Select E1.`Cust State`, ROUND (SUM(E2.PRICE*E2.`Quantity on Hand`)) AS SALES 
from customer AS E1
INNER JOIN f_inventory_adjusted AS E2
ON E1.`Cust Key`=E2.`Product Key`
GROUP BY `Cust State`
ORDER BY ROUND (SUM(E2.PRICE*E2.`Quantity on Hand`))desc;






















