select categories.CategoryName, products.ProductName
from products, categories
where categories.CategoryID = products.CategoryID and CategoryName like 'c%' and ProductName like '%p';