--4. find out which actor got the most job 
select concat(a.first_name, ' ', a.last_name) as name, count(*) as film_count from actor a
inner join film_actor fa
on fa.actor_id = a.actor_id
inner join film f
on f.film_id = fa.film_id
group by name
order by film_count desc
limit 10;
