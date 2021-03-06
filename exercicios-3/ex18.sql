use world;

# Questão 18: Retorne o nome do país em conjunto com a média de população das cidades (do país). Limite
# o resultado apenas pelos países cuja média de população das cidades seja maior que 70000.
# Ordene o resultado de forma ascendente.

SELECT country.name, AVG(city.Population) AS MediaMaior70000
FROM country
INNER JOIN city
ON city.CountryCode = country.Code
GROUP BY country.name
HAVING MediaMaior70000 > 70000
ORDER BY 2;