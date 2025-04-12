-- 1 Display all customer names and email addresses from the customer table 
select concat(first_name,' ',last_name) as fullname ,email
from customer;
-- 2 show the film titles and their rental rates from the film table
select title,rental_rate
from film;
-- 3 display the rental IDs, rental dates and return dates from the rental table
select rental_id, rental_date, return_date
from rental; 

-- 4 show the inventory IDs and the corresponding film id from the inventory table
select inventory_id, film_id
from inventory;
-- 5 display the staff IDs, firt names, and lastnames from the staff table
Select staff_id,first_name,last_name
from staff;
-- 6 Show the payment ID, amount and payment dates from the payyment table 
select payment_ID, amount, payment_date
from payment;
 -- 7 Display the rental IDs, customerIDs and staff ID fromk the rental rental table
 select rental_id,customer_id,staff_id
 from rental;
 -- 8 show the film Ids and titles of all films in the film table
 select film_id,title
 from film;
 -- 9 Display the store ids and addresses from the store table
 select store.store_id, address.address
 from store
 join address on store.address_id = address.address_id;
 -- 10 show the customerids,firstnames and lastnames of all customers un the customer table
 select customer_id,first_name,last_name
 from customer;
 -- 11 show the staffIDs and email addresses from the staff table
 select staff_id, email
 from staff;
 
 -- 12 Display the paymentIDs, customerids and staff ids from the payment table
 select payment_id,customer_id,staff_id
 from payment;
 -- 13 show the rental IDs, inventory IDs and customerIDs from the rental table 
 select rental_id,inventory_id,customer_id
 from rental;
 -- 14 Show the cutomer IDs, firstnames,lastnames and email addresses from the customer table
 select customer_id, first_name,last_name,email
 from customer;
 -- 15 Display the rentalID, RENTAL DATES and inventory ids from the rental table
 select rental_id,rental_date,inventory_id
 from rental;
 
 -- 16 show the staff ids, firstnames,lastnames ane email addresses from the staff table
 select staff_id, first_name,last_name,email
 from staff;
 -- 17 display the paymentids, amounts and cutsomer ids from the payment table
 select payment_id, amount, customer_id
 from payment;
 -- 18 show the inventory ids,film ids and storeids from the inventory table
 select inventory_id,film_id,store_id
 from inventory;
 -- 19 display the customerid, firtsnames,lastnames and email adresses of all customers who live in district "carlifonia" from the customer table
 select customer_id, first_name,last_name,email
from customer 
where district = 'carlifonia';


 -- 20 show the rentalids,rentaldates and return the dates of all rental made in may 2005 fromthe rental table 
 select rental_id,rental_date
 from rental
 where rental_date between  '2005-05- 01' and '2005-05-31';
 -- 21 Display the s=Staffids, firt=stnames, lastames and email addresses of all staff members who work in store 1 from the staff table
 select staff_id,first_name,last_name,email
 from staff
 where store_id =1;
 -- 22 show the payment ids, amount and customer ids of all payments made on May 14th, 2005  from the payment table
 select payment_id,amount, customer_id,payment_date
 from payment
 where payment_date = '2005-05-14';
 -- 23 display the rental ids, customerids and staff ids of all rentals made by Customer ID 1 from the rental table
 select rental_id,customer_id,staff_id
 from rental
 where customer_id = 1;
 -- 24 show the film ids , titles and rental rates of all films with a rental rate greater than or equal to 4 from the film table
 select film_id, title, rental_rate
 from film
 where rental_rate >= 4;
 -- 25 Display the customer ids, firstnames,lastnames and email addresses of all customers whose first  name starts wth "A" FROM THE customer table
 select customer_id, first_name,last_name, email
 from customer
 where first_name like 'A%';
 -- 26 show the rental ids, rental dates and inventory ids of all rentals made in store 2 from the rental table
 select r.rental_id,r.rental_date,r.inventory_id
 from rental r
 join inventory i on r.inventory_id = i.inventory_id
 where store_id = 2;
 -- 27 display the staff ids, firstnames, lastnames and email addresses of all staff memebers whi ahve a last name startung with "s" from the staff table
 select staff_id, first_name,last_name,email
 from staff
 where last_name like 'S%';
 -- sHOW THE PAYMENT IDs, AMOUNT AND CUSTOMER IDs of all payments made by customer id 2 from the payment table
 select payment_id, amount, customer_id
 from payment
 where customer_id = 2;
 -- 29 DIsplay the rental IDs, customer IDs and staff IDs of all rentals mad eon 14th,2005 from the rental table
 select rental_id, customer_id,staff_id
 from rental
 where rental_date = '2005-05-14';
 -- 30 Show the film IDs, titles and rental rates of all films with a rental less tha or equal to 3 from the film table
 select film_id, title, rental_rate
 from film
 where rental_rate <=3;
 
 -- 31 show the rental IDs, rental dates and return dates of all rentals where the return date is null from the rental table
 select rental_id,rental_date,return_date
 from rental
 where return_date = null;
 -- 32 32 Display the staff id, fristnames,lastnames and email addresses of all staff members who work in store 2
 select staff_id, first_name,last_name,email
 from staff
 where store_id = 2;
 
 -- 33 show the payment IDs, amounts and customer IDs of all payments made in JUne 2005 from the payment table
 select payment_id, amount, customer_id
 from payment
 where payment_date between '2005-06-01' and  '2005-06-30';
 -- 34 display the rental IDs, customer IDs and staff IDs of alrentals where the return date is null and the rental date is beore May 30th, 2005 from the rental table
 select rental_id,customer_id, staff_id
 from rental
 where return_date is null and rental_date  < '2005-05-30';
 -- 35 Show teh film ids, titles and rental  rates of all films in the drama category from the film table
 SELECT Film_id,title, rental_rate
 from film;
 -- 36 Display the customer ids, firstnames,last names and email addresses of all customers whose email address contains "gmail.com" from the customer table
 select customer_id,first_name,last_name,email
 from customer
 where email like '%gmail.com%';
 -- 37 show the rental IDs, rental dates and inventory ids of all rentals made by customer ID 2 in store 2 from the rental atble
 select rental_id, rental_date, inventory_id
 from rental
 where customer_id = 2;
 
 -- 38 display the staff ids, first_names,last_names and email addresses of all staff member who work in store 1 or 2 from the staff table
 select staff_id,first_name,last_name,email
 from staff
 where store_id  = 1 or store_id  =  2;
 
 -- 39 show the payment IDs,amounts and  customer_ids of all payments made by customer ID 1 OR 2 FROM PAYMENT TABLE
 select payment_id,amount,customer_id
 from payment
 where customer_id = 1 or customer_id = 2;
 -- 40 DISPLAY THE RENTAL IDs, customer ids and staff ids of  all rentals where the rental date is between May 1st, 2005 and May 51st, 2005 from the rental table
 select rental_id,customer_id,staff_id
 from rental
 where rental_date between  '2005-05-01' and '2005-05-31';
 -- 41 show the film IDs, titles and rental rates of all films in the comedy or drama category from the film table
 select f.film_id,f.title,f.rental_rate
 from film f
 join film_category fc on f.film_id = fc.film_id
 join category c on fc.category_id = c.category_id
 where c.name = 'comedy' or c.name='drama';
 -- 42 Display the customer IDs, firstnames, lastnames and email addresses of all customers who live in city "london" or"sydney" from the custoer table
 select c.customer_id,c.first_name,c.last_name,c.email
 from customer c
 join address a on c.address_id = a.address_id
 join city ci on a.city_id = ci.city_id
 where city ='london' or city ='sydney';
 -- 43 Show the rental ids, rental dates and inventory IDs of all rentals made by customerid 1 or 2 in store 1 from the rental table
 select r.rental_id, r.rental_date,r.inventory_id
 from rental r
 join inventory i on r.inventory_id = i.inventory_id
 join customer c on r.customer_id = c.customer_id
 where c.customer_id in (1, 2) and i.store_id =1;
 -- 44 Display the staff IDs, firstnames,lastnames and emai addreses of all staff members who work in store 1and have a lastname starting with B from the staff table
 select  staff_id, first_name,last_name,email
 from staff
 where store_id =1 and last_name like 'B%';
 
-- 45 show the rental ids of all payments made between May 1st 2005 and may 31st, 2005 from the payment table
select rental_id
from payment
where payment_date between '2005-05-01' and '2005-05-31';
-- 46 display the rental IDs, customer IDs of all rentals made un store 1 or 2 where the return date is null from the rental table
select r.rental_id,r.customer_id
from rental r
join inventory i on i.inventory_id = r.inventory_id

where store_id = 1 or store_id = 2 and return_date is null;
-- 47 show the film ids, titles and rental rates of all films i the horror, drama and or action category rom the film table
select f.film_id, f.title,f.rental_rate
from film f
join film_category Fc on f.film_id = fc.film_id
join category c ON fc.category_id = c.category_id
where c.name IN ('HORROR', 'DRAMA','ACTION');