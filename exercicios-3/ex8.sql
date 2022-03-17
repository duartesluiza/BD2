use world;

# Questão 8:  Retorne a média da área dos países da Europa.

SELECT AVG(country.SurfaceArea) FROM country WHERE country.Continent = 'Europe';