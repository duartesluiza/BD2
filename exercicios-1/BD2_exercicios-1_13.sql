-- questão 13 --
# Escreva uma consulta SQL que retorne todos os empregados (employees). Limite em 100 o número de
# registros retornados e ordene pelo campo número (emp_no) de forma ascendente.

USE psdb;

SELECT * FROM employees  ORDER BY emp_no ASC  LIMIT 100;
