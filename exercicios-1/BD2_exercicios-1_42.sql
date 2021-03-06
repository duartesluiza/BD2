-- questão 42 --
# Selecione todos os países cuja língua oficial seja o ‘Spanish’ e que a porcentagem da fala do idioma entre
# a população seja maior que 96.00.

USE world;

SELECT * FROM country 

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code

WHERE countrylanguage.Language = 'Spanish' 
AND countrylanguage.Percentage > 96.00;

