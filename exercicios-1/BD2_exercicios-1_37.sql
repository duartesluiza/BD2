-- questão 37 --
# Escreva uma consulta SQL que retorne todos os empregados (employees) cujo número esteja entre (IN)
# 494831 ou 479832 ou 599833 ou 499832 e sexo (gender) entre 'M' e 'F'. Coloque o apelido (ALIASES)
# na tabela empregados (employees) de 'emp' e referencie este nome nos campos da clausula WHERE em
# conjunto com o nome do campo para realizar o filtro (emp.emp_no).

USE psdb;

SELECT * FROM employees emp   
WHERE  emp.emp_no IN (494831,479832,599833,499832) AND emp.gender IN ('M','F');