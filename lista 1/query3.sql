select products.ProductID, products.ProductName, categories.CategoryName, products.UnitPrice
from products, categories
where products.CategoryID = categories.CategoryID
order by categories.CategoryName desc, products.UnitPrice asc;