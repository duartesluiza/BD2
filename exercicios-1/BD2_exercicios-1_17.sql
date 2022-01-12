-- questão 17 --
# Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name) seja
# igual a 'Basil' e o sexo (gender) seja diferente de 'M'.


USE psdb;

SELECT * FROM employees  WHERE first_name = 'Basil' AND gender <> 'M';