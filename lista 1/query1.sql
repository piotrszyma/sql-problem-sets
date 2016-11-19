select categories.CategoryName, products.ProductName
from products
inner join categories
on categories.CategoryID = products.CategoryID
where CategoryName like 'c%' and ProductName like '%p';