-- questão 18 --
# Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name) seja
# igual a 'Basil', o sobrenome (last_name) igual a 'Strooper' e o sexo (gender) seja igual a 'M'.


USE psdb;

SELECT * FROM employees
WHERE first_name = 'Basil'
AND last_name = 'Strooper'
AND gender = 'M';