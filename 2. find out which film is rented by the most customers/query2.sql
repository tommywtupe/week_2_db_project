-- 2. find out which film is rented by the most customers
select f.title, count(*) as customer_count from film f
inner join inventory i on f.film_id = i.film_id
inner join rental r on r.inventory_id = i.inventory_id
inner join customer c on r.customer_id =c.customer_id 
group by f.title
order by customer_count desc
limit 10;


