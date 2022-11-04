ALTER TABLE actor
ADD full_name VARCHAR(100);

UPDATE actor
SET full_name = concat(first_name, ' ', last_name);

ALTER TABLE old
ADD full_name VARCHAR(100);

SELECT * FROM old;

UPDATE old
SET full_name = concat(first_name, ' ', last_name);

ALTER TABLE old
DROP last_name;

ALTER TABLE old
DROP first_name;

ALTER TABLE actor
DROP last_name;

ALTER TABLE actor
DROP first_name;

SELECT * FROM actor;

create table old2
select actor_id, actor.full_name, film_id, film.title, old.release_year, category_id
from actor
inner join old
on old.full_name = actor.full_name
inner join film
on film.title = old.title;

drop table old;

alter table old2 rename old;