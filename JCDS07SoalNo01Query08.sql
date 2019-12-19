use sakila;

select film.title, category.name from category
inner join film_category on category.category_id = film_category.category_id
inner join film on film_category.film_id = film.film_id
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id
where actor.actor_id = 27 and category.name = 'Horror' group by film.title;