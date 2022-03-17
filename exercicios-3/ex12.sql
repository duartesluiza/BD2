use world;

# Questão 12: Retorne o nome do continente e a área do maior país (do continente). Ordene o resultado pela
# a área de maior a menor.

SELECT country.Continent, Name, MAX(country.SurfaceArea) FROM country  
GROUP BY country.Continent ORDER BY 2 DESC;