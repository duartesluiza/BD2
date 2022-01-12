-- questão 6 --
#Consultando a tabela empregados (employees), selecione os nomes (first_name) distintos. Ordene pelo
#campo first_name de forma ascendente.

USE psdb;

SELECT distinct first_name FROM employees
ORDER BY first_name ASC;