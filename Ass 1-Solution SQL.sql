USE mavenmovies; 

/*
1. Identify the primary keys and foreign keys in maven movies db. Discuss the differences
*/
-- Solution:
-- The major difference between Primary key and foreign key is Primary keys uniquely identify a record in a table, while foreign keys establish a link between tables. 

select
table_name,
column_name
from information_schema.key_column_usage 
where table_schema="mavenmovies" and constraint_name="primary" AND referenced_table_name IS NOT NULL;


/*
2. List all details of actors
*/
-- Solution:
select * from actor;

/*
3. List all customer information from DB.
*/
-- Solution:
select concat(first_name," ",last_name)as full_name from customer;

/*
4. List different countries.
*/
-- Solution:
select distinct country from country;

/*
5. Display all active customers.
*/
-- Solution:
select * from customer where active=1;

/*
6. List of all rental IDs for customer with ID 1.
*/
-- Solution:
select * from rental;
select rental_id,customer_id from rental where customer_id=1;

/*
7. Display all the films whose rental duration is greater than 5.
*/
-- Solution:
select * from film;
select title from film where rental_duration>5;
 
/*
8. List the total number of films whose replacemnet cost is greater than $15 and less than  $20.
*/
-- Solution:
select * from film where replacement_cost>15 and replacement_cost<20;
select * from film where  replacement_cost between 15 and 20;

/*
9. Display the count of unique first names of actors.
*/
-- Solution:
select * from actor;
select count(first_name) from actor;

/*
10. Display the first 10 recods from the customer table
*/
-- Solution:
select * from customer;
select * from customer order by customer_id limit 10;

/*
11. Display the first 3 records from the customer table whose first name starts with 'b'
*/
-- Solution:
select * from customer;
select * from customer where first_name like "b%" limit 3;
select  left(first_name,2)  from customer;


/*
12.  Display the names of first 5 movies which are rated as G.
*/
-- Solution:
select * from film;
select * from film where rating="G" order by title limit 5;

/*
13. Find all customers whose first name starts with "a".
*/
-- Solution:
select * from customer where first_name like "a%";

/*
14. Find all customers whose first name ends with "a".
*/
-- Solution:
select * from customer where first_name like "%a";


/*
15. Display the list of first 4 cities which start and end with ‘a’.
*/
-- Solution:
select * from customer where first_name like "%a";


/*
16 Find all customers whose first name have "NI" in any position.
*/
-- Solution:
Select * from customer where first_name like "%ni%" ;

/*
17 Find all customers whose first name have "r" in the second position .
*/
-- Solution:
select * from customer where first_name like "_r%" ;

SELECT first_name
FROM customer
WHERE first_name regexp "a|b";

SELECT first_name
FROM customer
WHERE first_name REGEXP 'a';

SELECT last_name
FROM customer
WHERE last_name REGEXP '^adam';

SELECT * FROM customer WHERE first_name REGEXP '^A';

/*
18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
*/
-- Solution:
select * from customer where first_name like "a%";
select first_name from customer where first_name regexp "AR";

/*
19.Find all customers whose first name starts with "a" and ends with "o".
*/
-- Solution:
select * from customer where first_name like "a%o";


/*
20.Get the films with pg and pg-13 rating using IN operator.
*/
-- Solution:
select * from film where rating in(PG ,PG-13);

/*
20 Get the films with length between 50 to 100 using between operator.
*/
-- Solution:
select * from film where Length between 50 and 100;


/*
Get the top 50 actors using limit operator.
*/
-- Solution:
select * from actor limit 50;

/*
Get the distinct film ids from inventory table.
*/
-- Solution:
select * from inventory;
select distinct film_id from inventory;

**************************************************************************************************************************
1. Identify the primary keys and foreign keys in maven movies db. Discuss the differences
2. List all details of actors
3. List all customer information from DB.
4. List different countries.
5. Display all active customers.
6. List of all rental IDs for customer with ID 1.
7. Display all the films whose rental duration is greater than 5.
8. List the total number of films whose replacemnet cost is greater than $15 and less than  $20.
9. Display the count of unique first names of actors.
10. Display the first 10 recods from the customer table
11. Display the first 3 records from the customer table whose first name starts with 'b'
12.  Display the names of first 5 movies which are rated as G.
13. Find all customers whose first name starts with "a".
14. Find all customers whose first name ends with "a".
15. Display the list of first 4 cities which start and end with ‘a’.
16 Find all customers whose first name have "NI" in any position.
17 Find all customers whose first name have "r" in the second position .
18 Find all customers whose first name starts with "a" and are at least 5 characters in length.
19.Find all customers whose first name starts with "a" and ends with "o".
20.Get the films with pg and pg-13 rating using IN operator.

