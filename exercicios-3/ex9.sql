use world;

# Questão 9: Retorne o nome do continente e a média da área dos países (que fazem parte do continente).
SELECT country.Continent, AVG(country.SurfaceArea) as MediaArea FROM country  
GROUP BY country.Continent;