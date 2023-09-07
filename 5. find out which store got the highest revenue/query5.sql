--5. find out which store got the highest revenue
select s.store_id, address.address, sum(p.amount) as total_amount from store s
inner join address on s.address_id = address.address_id
inner join inventory i on s.store_id = i.store_id
inner join rental r on r.inventory_id = i.inventory_id
inner join payment p on p.rental_id = r.rental_id
group by s.store_id, address.address
order by total_amount desc;
