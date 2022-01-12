-- questão 14 --
# Escreva uma consulta SQL que retorne todos os empregados (employees). Limite em 100 o número de
# registros retornados e ordene pelo campo número (emp_no) de forma descendente.

USE psdb;

SELECT * FROM employees  ORDER BY emp_no DESC  LIMIT 100;