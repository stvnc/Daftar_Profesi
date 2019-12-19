use sakila;

select actor.actor_id, actor.first_name, actor.last_name, count(film.title) as jumlah_Movie
from actor inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film on film_actor.film_id = film.film_id
inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where category.name = 'Horror' group by actor.actor_id order by jumlah_Movie desc limit 10;