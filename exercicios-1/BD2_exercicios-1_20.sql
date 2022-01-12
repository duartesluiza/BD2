-- questão 20 --
# Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name)
# contenha no final os seguintes caracteres 'zette'.

# % --> serve como um curinga! Ele vai indicar a partir da onde eu quero a sequencia de caracteres!
# Obs: na questão anterior se tem a mesma situação!

USE psdb;

SELECT * FROM employees
WHERE first_name LIKE '%zette' ;

