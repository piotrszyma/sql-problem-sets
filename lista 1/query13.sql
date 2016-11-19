select ProductID, MIN(Quantity) as MinimalQuantity 
from order_details
group by ProductID;