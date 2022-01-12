-- questão 33 --
# Selecione os empregados (employees) cujo nome (first_name) contenha a combinação de caracteres 'Crist'
# e cujo número (emp_no) seja menor que 37126.


USE psdb;

SELECT * FROM employees  WHERE first_name LIKE '%Crist%' AND emp_no < 37126;