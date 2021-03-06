use sakila;

# Questão 27:  Retorne o id, nome e sobrenome dos autores além do total de filmes dos quais cada um já
# participou. Ordene pelo total de filme de menor a maior.


select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.actor_id) AS Total
FROM actor 
inner join film_actor
on film_actor.actor_id = actor.actor_id
group by actor.actor_id, actor.first_name, actor.last_name
ORDER BY Total;