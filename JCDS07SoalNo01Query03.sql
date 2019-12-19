select film.rating, any_value(ratingdesc.decription) as keterangan, count(film.film_id) from film
inner join ratingdesc on film.rating = ratingdesc.rating_name
group by film.rating order by film.rating asc;