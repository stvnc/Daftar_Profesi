select actor.actor_id, actor.first_name, actor.last_name, count(film.film_id) as jumlahMovie
from film inner join film_actor on film.film_id = film_actor.film_id 
inner join actor on film_actor.actor_id = actor.actor_id group by actor.actor_id 
order by jumlahMovie desc;