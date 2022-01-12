-- questão 19 --
# Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name)
# contenha no início a combinação de caracteres 'Crist'


USE psdb;

SELECT * FROM employees  
WHERE first_name LIKE 'Crist%';