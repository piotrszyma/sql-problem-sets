SET SQL_SAFE_UPDATES = 0;
update northwind.products, northwind.suppliers
set products.UnitPrice = products.UnitPrice + 2
where products.SupplierID = suppliers.SupplierID and suppliers.Country = 'USA';
SET SQL_SAFE_UPDATES = 1;