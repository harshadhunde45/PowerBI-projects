select * from customer;
select left(email,locate('@',email)-1)as first_name from customer ;

use mavenmovies;
select * from film;
select left(title,locate(" ",title))as Initial_Movie_Title from film;
select locate(" ",title)-1 as Initial_Movie_Title from film; 
select substr("harsha",5,10);
select substr("pavan",2,10);

select IFERROR(LEFT(trim(SUBSTITUTE(A2,"@","")),FIND(" ",trim(SUBSTITUTE(A2,"@","")))-1),trim(SUBSTITUTE(A2,"@",""))) as first_name
from film; 

SELECT 
IFNULL(SUBSTRING_INDEX(TRIM(SUBSTRING_INDEX(email, '@', 1)),' ',1),TRIM(SUBSTRING_INDEX(email, '@', 1))) AS first_name
FROM 
customer;

select count(distinct email from customer;

##place holder (_)

SELECT * FROM customer 
WHERE LENGTH(first_name) = 4;

select * from customer where first_name like "____";

select * from customer where first_name regexp "^.{4}$";