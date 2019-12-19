use sakila;

select category.name as kategori, count(film.film_id) as jumlahMovie,
avg(film.rental_rate) from category inner join film_category 
on category.category_id = film_category.category_id 
inner join film on film_category.film_id = film.film_id group by category.name 
order by count(film.film_id) desc;