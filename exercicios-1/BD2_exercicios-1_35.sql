-- questão 35 --
# Escreva uma consulta SQL que retorne todos os empregados (employees) cujo número esteja entre (IN)
# 494831 ou 479832 ou 599833 ou 499832 e sexo (gender) entre 'M' e 'F'.


USE psdb;

SELECT * FROM employees  
WHERE emp_no IN (494831,479832,599833,499832) AND gender IN ('M','F');