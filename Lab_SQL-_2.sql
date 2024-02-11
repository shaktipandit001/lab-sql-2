use sakila;
select * from sakila.actor;  
select * from actor;
##Select all the actors with the first name ‘Scarlett’.
select * from sakila.actor where first_name = "Scarlett";

##Select all the actors with the last name ‘Johansson’.
select * from sakila.actor where last_name = "Johansson";

##How many films (movies) are available for rent?
select * from film;
select count(*) from film;

##How many films have been rented?
select * from rental;
select count(*) from rental;

##What is the shortest and longest rental period?
select * from rental; 
select rental_id, rental_date, return_date , return_date - rental_date as rental_time  from rental;
select min(timediff(return_date, rental_date )) as min_rental_time from rental;
select max(timediff(return_date, rental_date)) as max_retal_time from rental;

##What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select * from film; 
select min(length) as min_duration from film;
select max(length) as max_duration from film;

##What's the average movie duration?
select avg(length) as avg_duration from film;

##What's the average movie duration expressed in format (hours, minutes)?
select floor(avg(length/60)) as movie_duration_Houre from film;
select floor(avg(length%60)) as movie_duration_minut from film;

##How many movies longer than 3 hours?
select count(length) > (60*3) as Movie_Longer_3 from film;

##Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select * from customer;
select customer_id, concat(first_name," ", last_name," ",'-' ," ", email) as fulname_email
from customer;


##What's the length of the longest film title?
select max(length(title)) as longest_film_title from film;