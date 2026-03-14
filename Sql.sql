create database Totalsales;
use Totalsales;
show tables;
select * from sales;
select sum(TotalPrice) from sales;
select sum(Quantity) from sales;
## Which store generated the maximum revenue?
select Location,sum(TotalPrice) from sales
group by Location 
order by sum(TotalPrice) desc limit 1;
## Which store sold the most products?
select Location,sum(Quantity) from sales
group by Location 
order by sum(Quantity) desc limit 1;
select days,sum(TotalPrice) from sales
group by days;
## Which Three payment types generated the max revenue.
select PaymentType,sum(TotalPrice) from sales
group by PaymentType
order by sum(TotalPrice) desc limit 3;
## Which 3 products generated the most revenue?
select Product,sum(TotalPrice) from sales
group by Product
order by sum(TotalPrice) desc limit 3; 
## Which three products were sold the most?
select Product,sum(Quantity) from sales
group by Product
order by sum(Quantity) desc limit 3;



