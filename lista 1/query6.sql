select ProductID
from order_details
group by ProductID
having avg(Quantity) > 2;