-- questão 5 --
#Consultando a tabela empregados (employees), selecione os nomes (first_name) distintos. Ordene pelo
#campo nome (first_name) de forma descendente.

USE psdb;

SELECT DISTINCT first_name FROM employees
ORDER BY first_name DESC;