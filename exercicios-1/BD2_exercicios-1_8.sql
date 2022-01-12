-- questão 8 --
#Escreva uma consulta SQL que retorne distintas combinações de nomes (first_name) e sobrenomes
#(last_name) da tabela empregados (employees). Ordene o resultado por first_name e last_name.

USE psdb;

SELECT distinct first_name, last_name FROM employees
order by first_name, last_name;