create database customer;

create table customer.tblcustomer 
(customer_id bigint, 
customer_name varchar (20), 
municipality varchar (20), 
city varchar (15), 
salary_in_peso int (15));

Insert into customer.tblcustomer values 
( '1','Gina de Leon','Apalit','pampanga','5000' ),
( '2','Amana Luna','Mexico','pampanga','6000' ),
( '3','Lucila Maulon','Angat','Bulacan','1000' ),
( '4','Rafael Santos','Lumban','Laguna','4500' ),
( '5','Maricel Moran','Calumpit','Bulacan','12000' ),
( '6','Antonio Moreno','Santa Maria','Bulacan','8500' ),
( '7','Hanna Moos','Alaminos','Laguna','6000' ),
( '8','Fred Gregorio','Lumban','Laguna','5000' ),
( '9','Maria Andres','Porac','pampanga','1800' ),
( '10','Liza Ramos','Alaminos','Laguna','14000' );

select * from customer.tblcustomer;
-- show table named tblcustomer and its data

select city from customer.tblcustomer;
-- select all records from pampanga city

select * from customer.tblcustomer where city = 'Pampanga';
-- select all customer from pampanga

select * from customer.tblcustomer where city = 'Pampanga' and municipality = 'Porac';

select * from customer.tblcustomer where municipality = 'Angat' or municipality = 'Angat';
-- select  all cities that are not pampanga

select * from customer.tblcustomer where not city = 'Pampanga';

-- customer with lowest salary
select min(salary_in_peso)
from customer.tblcustomer
where city = 'Pampanga';

select*from customer.tblcustomer order by city desc;
-- order it from desc order

select*from customer.tblcustomer order by city asc;
-- order it from asc order

select*from customer.tblcustomer order by city asc, customer_name asc;










select min(salary_in_peso)
from customer.tblcustomer
where city = 'Bulacan';

select max(salary_in_peso)
from customer.tblcustomer
where city = 'Laguna';

