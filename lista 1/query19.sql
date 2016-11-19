SET SQL_SAFE_UPDATES = 0;
update products join (SELECT order_details.ProductID, sum(order_details.Quantity) as q
FROM northwind.order_details
group by order_details.ProductID) as t1
on t1.ProductID = products.ProductID
set products.TotalSales = t1.q;
SET SQL_SAFE_UPDATES = 1;