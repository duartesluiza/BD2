use world;

# Questão 13: Retorne o nome do país e o total de idiomas que nele se falam.

SELECT country.name, count(countrylanguage.CountryCode)
FROM country
INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code
GROUP BY country.name;