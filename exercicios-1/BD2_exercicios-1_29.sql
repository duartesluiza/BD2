-- questão 29 --
# Escreva uma consulta SQL que retorne os empregados (employees) cujo número (emp_no) está entre
# (BETWEEN) 14037 e 14047.


USE psdb;

SELECT * FROM employees WHERE emp_no BETWEEN 14037 AND 14047;
