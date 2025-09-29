# 1.Identify the primary keys and foreign keys in any one table.

describe actor;
desc actor;
# no diff in describe ,desc

##2. List all details of actors.
select * from actor;

##3. List all customer information from DB.
select * from customer;

##4. List the name of all unique countries.
select unique country from country ;
select Distinct country from country;
select * from country;

##5. Display all active customers.
select *from customer where active=1 ;

##8. Find the total number of films whose replacemnet cost is greater than $15 and less than  $20.
select * from film where replacement_cost>15 and replacement_cost <20;
select count(film_id) from film where replacement_cost between (>15 and <20) 
SELECT COUNT(film_id) 
FROM film 
WHERE replacement_cost BETWEEN 15 AND 20;
 update film where total films=<$15 and <$20;
select count(film_id) from film where replacement_cost >15 and replacement_cost <20 ;
select count(film_id) from film where replacement_cost between 15 and 20 ;
select count(film_id) from film;

##9. Display the count of unique first names of actors.
select * from actor;
select count(distinct first_name)as no_of_actors from  actor;
select distinct(first_name) from actor;

##10. Display the first 10 recods from the customer table.
select * from customer limit 10;

##11. Display the first 3 records from the customer table whose first name starts with 'b'.
select * from customer where first_name like "b%" limit 3;

##12.  Display the names of first 5 movies which are rated as G.
select rating ,title from film where rating="G" limit 5;
select * from film;
select * from film_category;

##13. Find all customers whose first name starts with "a".
select * from customer where first_name like "a%";

##14. Find all customers whose first name ends with "a".
select * from customer where first_name like "%a";

##15. Display the list of first 4 cities which start and end with ‘a’.
select * from city where city like "a%a";

##16. Find all customers whose first name have "NI" in any position.
select * from customer where first_name like "%NI%";

##17. Find all customers whose first name have "r" in the second position.
select * from customer where first_name like "_r%";

##18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
select length(first_name) ,first_name from customer where first_name like "a%";

##19.Find all customers whose first name starts with "a" and ends with "o".
select * from customer where first_name like "a%o";
select first_name +' '+ last_name from customer where first_name like "a%o" ;
select first_name +' '+ last_name from customer where first_name like "a%o" ;
SELECT CONCAT(first_name, '-', last_name) AS full_name
FROM customer
WHERE first_name LIKE 'a%o';


##20. Get the films with pg and pg-13 rating using IN operator.
select * from film where rating in("PG" ,"PG-13") ;
select * from film
where rating="PG" or rating ="PG-13" ;
select * from film where rating='pg'or rating='pg-13' or rating="pg-20";
true or false 
true or false
true 


##Get the detail of all films having rating =pg and released year 2006
select * from film
where rating="PG" and release_year= 2006; 

##21. Get the films with length between 50 to 100 using between operator.
select * from film where length>=50 and length <=100 ;
select * from film where length between 50 and 100;


##22. Get the top 50 actors using limit operator.
select * from actor limit 50;

##23. Get the distinct film ids from inventory table.
select distinct(film_id) from  inventory ;

## how to find 4 letter from first_name ## length always find no of charchter from row /field 
select * from actor where length(first_name)=4;
 select first_name from customer where length(first_name)=5;       

      
## How to find 4 letter from specific column upto 3 
select * from actor where length(first_name);
select   first_name from customer where length(first_name);        

       



