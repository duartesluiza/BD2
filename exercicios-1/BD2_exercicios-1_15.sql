-- questão 15 --
# Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name) seja
# igual a 'Basil'

USE psdb;

SELECT * FROM employees   WHERE FIRST_NAME = 'Basil';