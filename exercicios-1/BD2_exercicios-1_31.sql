-- questão 31 --
# Selecione os empregados (employees) cujo nome (first_name) contenha no início a combinação de
# caracteres 'Crist' e cujo número (emp_no) seja maior que 485733


USE psdb;

SELECT * FROM employees  
WHERE first_name LIKE 'Crist%' AND emp_no > 485733;
