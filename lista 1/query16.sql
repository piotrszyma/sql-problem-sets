delete od
from order_details od
inner join orders os
on os.OrderID = od.OrderID 
where os.OrderDate = '1998-04-14 00:00:00' or os.OrderDate = '1998-07-17';