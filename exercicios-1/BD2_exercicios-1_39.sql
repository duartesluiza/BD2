---- INNER JOIN ------------

-- questão 39 --
# Selecione todos os países nos quais se fala a língua ‘Dutch’

USE world;

SELECT * FROM country 
INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code
WHERE countrylanguage.Language = 'Dutch';
