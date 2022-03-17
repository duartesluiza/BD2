use sakila;

# Questão 19: Some o total de pagamentos realizados.

SELECT customer_id, SUM(amount) FROM payment;


