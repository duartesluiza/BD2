use world;

# Questão 11:  Retorne o nome do continente e a área do maior país (do continente).

SELECT country.Continent, MAX(country.SurfaceArea) as MaiorAreaPais FROM country  
GROUP BY country.Continent;