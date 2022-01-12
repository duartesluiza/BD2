-- questão 4 --
#Consultando a tabela empregados (employees), selecione os nomes (first_name) distintos. Ordene pelo
#campo nome (first_name).

USE psdb;

SELECT DISTINCT first_name FROM employees
ORDER BY first_name;