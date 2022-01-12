-- questão 24 --
# Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name) seja
# igual a 'Yinghua' ou igual a 'Elvis'.



USE psdb;

SELECT * FROM employees
WHERE(first_name = 'Yinghua' OR first_name = 'Elvis');