-- questão 27 --
# Escreva uma consulta SQL que exiba o nome (first_name) e sobrenome (last_name) da tabela empregados
# (employees) cujo número (emp_no) seja igual a 14037.



USE psdb;

SELECT first_name, last_name FROM employees WHERE emp_no = 14037;



