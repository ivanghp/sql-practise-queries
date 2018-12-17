/*1. from HR. Employees:  

*/
select * from hr.employees;

--1.1: izlistajj prikaz, na : empid, and full name (in one column)
CREATE VIEW [Id and Full Name] as select empid, (firstname +' '+ lastname) as fullname from hr.employees;
select * from [Id and Full Name];

--1.2: show all employed after 01-Jan-2003 sorted by country
select * from hr.employees
where hiredate > CONVERT(datetime, '2003-01-01')
order by country desc;

--1.3: show unique - country, region, city
select distinct country, region, city from hr.employees;

--1.4: find which employee has the longest surname and how many characters it is
select top 1 *, len(lastname) numofchar from hr.employees order by len(lastname) desc;


select * from sales.customers;
select * from Sales.Orders;

--2. show customers with their orders
select * from sales.customers inner join sales.orders on Sales.Orders.custid = Sales.Customers.custid;

--show customers with their orders including customers without orders
select * from sales.customers left join sales.orders on Sales.Orders.custid = Sales.Customers.custid;

--customers with orders of feb-2008
select * from sales.customers inner join sales.orders on Sales.Orders.custid = Sales.Customers.custid
where orderdate >= CONVERT(datetime, '2008-02-01') /*;?*/and orderdate < CONVERT(datetime, '2008-03-01');




