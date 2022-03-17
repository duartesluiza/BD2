use world;

# Questão 16: Retorne o nome do país em conjunto com a média de população das cidades (do país).

SELECT country.name, AVG(city.Population) as MediaPopulacaoCidades
FROM country
INNER JOIN city
ON city.CountryCode = country.Code
GROUP BY country.name;