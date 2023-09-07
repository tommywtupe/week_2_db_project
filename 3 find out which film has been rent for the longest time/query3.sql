-- 3 find out which film has been rent for the longest time 
select f.title, sum(r.return_date-r.rental_date) as time_count from film f
inner join inventory i on f.film_id = i.film_id
inner join rental r on r.inventory_id = i.inventory_id
group by f.title
order by time_count desc
limit 10;


