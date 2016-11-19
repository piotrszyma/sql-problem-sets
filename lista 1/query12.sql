select orders.CustomerID, products.ProductID, Round(order_details.UnitPrice * order_details.Quantity, 2) as Quantity
from products, orders, order_details
where products.ProductID = order_details.ProductID and orders.OrderID = order_details.OrderID;