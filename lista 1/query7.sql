select employees.LastName, orders.OrderID
from employees, orders
where orders.EmployeeID = employees.EmployeeID and orders.OrderDate < '1998-01-23 00:00:00';