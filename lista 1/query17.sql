insert into order_details
(OrderID, ProductID) 
select OrderID
from orders
where orders.OrderDate = '1998-04-14 00:00:00';