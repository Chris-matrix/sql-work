# Objective: 
    # List all movies rented by customers, 
    # along with their first and last names.
    
    # Table Names 
    # 1. Rentals 
    # 2. Customer 
    # 3. Inventory 
    # 4. Film 




select * from rental;
select * from customers;
select * from inventory;
select * from film;

SELECT 
    customers.frist_name AS fname, last_name AS lname
FROM
    rental AS r
        INNER JOIN
    customer ON customers.customers_id = r.customers_id;


select inventory.film_id as fid, inventory.inventory_id as invid # creted colum names 
from inventory # pulled from the cloum to get the data
inner join # inner joined inventory and film
film on inventory.film_id = inventory.inventory_id; # joining the film and inventory 




# join files on film_actor

select 
f.film_actor as fid
a.frist_name as fname
a.last_name as lname
from
film as f 
-- inner, outer, full, self,left,right
film_actor as fa on f.film_id = fa.film_id
-- inner, outer, full, self,left,right
actor as a on a.actor_id = fa.actor_idcustomer_create_date
# filter
f.film_id = 1;

# Data aggregitons
select <aggregator()> from <table>

select count(*) from actor;
select country_id, count(city) from city group by country_id;

# mySQL  Sytntax
#select, from , where , join, # keyboreds

select columns_name
from table_name
where column_name = "Thomas";

select customer_id as customer_pk, store_id,first_name
from customer as cx;

#Lets find the simliar columns
select film_id from film
select film_id form film_actor;
