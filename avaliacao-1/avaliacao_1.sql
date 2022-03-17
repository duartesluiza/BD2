# *********************************** AVALIAÇÃO 1 *************************************

# Questão 1: Programe um comando SQL para retornar o código do cliente e a soma do total de pagamentos realizados. 
# Filtre os clientes pelos códigos 2, 11, 20 e 37.
use sakila;

select customer_id, sum(amount) as TotalPayments
from payment
where customer_id in (2,11,20,37)
group by customer_id;



# Questão 2: Programe um comando SQL que retorne o código do cliente, nome, sobrenome e o total de pagamentos realizados. 
# Filtre os clientes pelos códigos 2, 11, 20 e 37.
use sakila;
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS TotalPayments 
FROM customer 
INNER JOIN payment 
ON payment.customer_id = customer.customer_id 
group by customer.customer_id
having customer_id in (2,11,20,37);

# Obs: HAVING -> especifica quais registros agrupados são exibidos em uma instrução SELECT com uma cláusula GROUP BY. 
# Depois que GROUP BY combina os registros, HAVING exibe todos os registros agrupados pela cláusula GROUP BY que satisfaçam 
# as condições da cláusula HAVING.





# Questão 3. Programe um comando SQL que retorne o código do cliente, nome, sobrenome e a soma do total de pagamentos realizados. 
#    Filtre o nome do cliente cujo nome seja igual a ‘ELLEN’. Filtre o total de pagamentos
#    realizados para retornar apenas os valores entre 100 e 125.
use sakila;
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS TotalPayments 
FROM customer 
INNER JOIN payment 
ON payment.customer_id = customer.customer_id 
group by customer.customer_id
having first_name="ELLEN" and SUM(payment.amount) between 100 AND 125;




# Questão 4: Programe um comando SQL que retorne o código da categoria, o nome e a média de tempo
# dos filmes que a ela pertencem.

use sakila;
SELECT category.category_id, category.name as Genero, avg(film.length) as MediaTempo
from category
INNER JOIN film_category
on film_category.category_id=category.category_id
INNER JOIN film
on film.film_id=film_category.film_id
group by category.category_id;

# Obs: AVG -> vai retornar o valor medio da expressão





# Questão 5: Ordene a consulta resultante da questão número 4 por média de tempo em ordem
# descendente. Filtre a média de tempo para retornar apenas os filmes com a média entre 120 e 130.

use sakila;
SELECT category.category_id, category.name as Genero, avg(film.length) as MediaTempo
FROM category
INNER JOIN film_category
on film_category.category_id=category.category_id
INNER JOIN film
ON film.film_id=film_category.film_id
GROUP BY category.category_id, Genero
having avg(film.length) between 120 and 130
order by MediaTempo desc;





# Questão 6: Programe um comando SQL para retornar o nome do país, nome da cidade, nome, sobrenome
# e e-mail do cliente. Inclua também o endereço, o telefone e o código postal. Retorne apenas os
# clientes cujo nome do país inicie com a letra ‘A’ ou que contenha o valor ‘nada’ em qualquer
# lugar do nome. 

use sakila;
SELECT country,city.city,customer.first_name,customer.last_name,customer.email,address.address,address.phone,address.postal_code    
FROM country
INNER JOIN city 
ON city.country_id = country.country_id 
INNER JOIN customer
ON customer.customer_id = city.country_id 
INNER JOIN address
ON address.address_id = customer.customer_id
where country like 'A%' or country like '%nada%';




# Questão 7: Programe um comando SQL para retornar do ator o código, nome, sobrenome e total de filmes
# nos quais ele atuou. Retorne apenas o autor com o maior número de filmes. 

use sakila;
select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.actor_id) AS TotalFilmes
FROM actor 
inner join film_actor
on film_actor.actor_id = actor.actor_id
group by actor.actor_id
order by 4 desc
limit 1;

# Obs: limit -> retorna apenas o ator com maior nº de filmes






# Questão 8 (****Igual questão 6****): Programe um comado SQL para retornar o nome do país, nome da cidade, nome, sobrenome e
# email do cliente. Também retorne o endereço, telefone e código postal. Filtre os países que
# iniciam com a letra ‘A’ ou que contém ‘nada’ em alguma parte do nome.

use sakila;       
SELECT country,city.city,customer.first_name,customer.last_name,customer.email,address.address,address.phone,address.postal_code    
FROM country
INNER JOIN city 
ON city.country_id = country.country_id 
INNER JOIN customer
ON customer.customer_id = city.country_id 
INNER JOIN address
ON address.address_id = customer.customer_id
where country like 'A%' or country like '%nada%';





# Questão 9: Programe um comando SQL que sem utilizar o comando inner join faça a junção das tabelas
# country e city. Retorne o nome do país e o nome da cidade. Ordene o nome do país de forma
# descendentes e o nome da cidade de forma ascendente

use sakila;
select c.country as pais, cy.city as cidade
from country c, city cy
where c.country_id=cy.country_id
order by pais desc, cidade asc;






# Questão 10: Utilizando o comando CROSS JOIN calcule o tamanho (em número de registros) do produto
# cartesiano obtido a partir das tabelas payment e customer, retorne o valor como resultado da
# consulta. 

# Obs: O CROSS JOIN retorna a combinação de cada uma das linhas entre as tabelas envolvidas, 
# também conhecido como Produto cartesiano

use sakila;
select * from payment croos join customer; 








# Questao 12: Programe uma consulta SQL que retorne os seguintes campos respeitando a seguinte ordem:
# distrito, endereço, nome e sobrenome do cliente, código postal e telefone. Filtre aos clientes
# que moram nas distintas cidades dos Estados Unidos ('United States') registradas na base de
# dados. Não utilize junções para formar a consulta e sim subqueries. Ordene o resultado da
# consulta por distrito, endereço, nome e sobrenome. 

use sakila;
select a.district, a.address, c.first_name, c.last_name, a.postal_code, a.phone, ci.city, co.country
from address a, customer c, city ci, country co
where a.address_id=c.address_id and a.city_id=ci.city_id and ci.country_id=co.country_id and co.country='United States'
order by a.district, a.address, c.first_name, c.last_name;







# Questão 13: . Programe uma consulta SQL que retorne o código do funcionário do staff, nome e o
# sobrenome. Também deve ser retornado o total de aluguéis incluídos na base de dados por
# cada um. Filtre a data dos aluguéis (rental_date) entre '2005-07-29' e '2021-07-30'.

use sakila;
select r.staff_id Id, s.first_name Nome,  s.last_name Sobrenome ,count(inventory_id) as TotalAlugueis
from rental r,staff s
where r.staff_id=s.staff_id and r.rental_date between '2005-07-29' and  '2021-07-30'
group by r.staff_id;







# Questão 14: Programe uma consulta SQL que retorne o código e nome do filme assim como o total de
# vezes que foi alugado. Ordene a consulta pelo campo total de forma descendente. 

use sakila;
select f.film_id, f.title,count(i.inventory_id) as TotalAluguel
from film f 
inner join inventory i
on i.film_id=f.film_id
group by f.film_id
order by 3 desc;