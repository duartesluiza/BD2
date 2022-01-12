-- questão 41 --
# Selecione todos os países cuja língua oficial seja o ‘Spanish’.

USE world;

SELECT * FROM country 

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code

WHERE countrylanguage.Language = 'Spanish';
 
