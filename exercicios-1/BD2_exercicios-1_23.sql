-- questão 23 --
# Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name)
# contenha a combinação de caracteres 'arvi' e o sexo (gender) seja igual a 'M'.



USE psdb;

SELECT * FROM employees
WHERE first_name LIKE '%arvi%' AND gender = 'M';
