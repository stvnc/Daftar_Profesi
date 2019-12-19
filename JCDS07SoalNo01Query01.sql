use sakila;

select film.title, category.name as category, film.length from film 
inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where category.name = 'Comedy' order by film.length asc limit 10;