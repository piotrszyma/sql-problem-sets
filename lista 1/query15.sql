create temporary table CustTemp as 
select * from customers where customers.CompanyName like "T%";

select * from CustTemp;

drop temporary table CustTemp;

