-- questão 40 --
# Selecione todas as cidades dos países no qual se fala a língua ‘Dutch’

USE world;

SELECT city.* FROM city 

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = city.CountryCode

WHERE countrylanguage.Language = 'Dutch';

