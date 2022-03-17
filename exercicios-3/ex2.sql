use world;

# Questão 2: Retorne o nome dos continentes e o total de países que neles existem.
SELECT country.Continent, COUNT(country.Continent) AS Total FROM  country
GROUP BY country.Continent;