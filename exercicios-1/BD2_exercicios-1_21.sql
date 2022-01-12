-- questão 21 --
# Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name)
# contenha no final a combinação de caracteres 'zette' e que o sexo (gender) seja igual a 'M'.



USE psdb;

SELECT * FROM employees
WHERE FIRST_NAME LIKE '%zette'
AND GENDER = 'M';