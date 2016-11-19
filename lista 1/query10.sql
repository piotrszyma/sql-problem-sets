select products.ProductName, MIN(orders.OrderDate) as FirstOrderDate
from products, orders, order_details
where orders.OrderID = order_details.OrderID and products.ProductID = order_details.ProductID
group by ProductName;