-- 1. Saca los 5 generos con mayor numero de películas

select c.name, count(f.film_id) as mas_pelis
from category as c
left join old as o
on c.category_id = o.category_id
left join film as f
on o.film_id = f.film_id
group by c.name
order by mas_pelis desc
limit 5;

-- 2. Película que tiene más actores

select f.film_id, f.title, count(a.full_name) as actores
from film as f
left join old as o
on f.film_id = o.film_id
left join actor as a
on o.actor_id = a.actor_id
group by a.actor_id
order by actores desc
limit 1;

/* 3. Selecciona el Top 3 peliculas mejor valoradas con su titulo, categoria, longitud y 
valoración ordenadas por valoracion y longitud*/

select f.title, length, c.name as category, avg(rental_rate) as avr_rate
from film as f 
left join old as o 
on f.film_id = o.film_id 
left join category as c 
on c.category_id = o.category_id 
where c.name != 'New' 
group by f.film_id
order by avr_rate desc, length desc
limit 3;

/* 4. Top 5 peliculas más largas*/

select title, length
from film 
order by length desc 
limit 5;

/* 5. Selecciona la pelicula con titulo 'HOME PITY' con su descripción, id e idioma*/

select title, film_id, description, l.name
from  film as f
left join language as l
on f.language_id = l.language_id
where title = 'HOME PITY';

/* 6. Selecciona titulos de las peliculas y la duracion en HORAS ordenadas de mayor a menor*/

select title, (length/60) as duration_hours
from film
order by length desc;

/* 7. Selecciona los nombres del actor y pelicula del genero comedia*/

select a.full_name, o.title, c.name
from actor as a
left join old as o
on a.actor_id=o.actor_id
left join category as c
on o.category_id=c.category_id
where c.name= 'comedy'

/* 8. Encuentra los dos actores que se llaman igual*/

select full_name, count(full_name) as repe
from actor
group by full_name
order by repe desc
limit 1;

/* 9. Encuentra el actor que contine menos de 10 peliculas*/

select actor.full_name, COUNT(old.title) as NumberOfold
from old
inner join actor 
on old.actor_id = actor.actor_id
group by actor.actor_id
having COUNT(old.title) < 10;

/* 10. Listado de peliculas que contengan escenas detras de camaras*/

select title, special_features
from film
where special_features like '%Behind the Scenes%' ;