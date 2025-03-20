-- Exercise 2: Subquery Practice (Beginner SQL)

-- ------------------------------------------
-- Challenge 1: Inflation and Unemployment for Republics and Monarchies (2015)
-- ------------------------------------------

-- Select relevant economic data for 2015
-- Filter countries with a form of government that includes 'Republic' or 'Monarchy'
-- Use a subquery to get country codes from the 'countries' table
SELECT code, inflation_rate, unemployment_rate 
FROM economies
WHERE year = 2015 
  AND code IN (
    SELECT code 
    FROM countries
    WHERE gov_form LIKE '%Monarchy%' OR gov_form LIKE '%Republic%'
  )
ORDER BY inflation_rate;


-- ------------------------------------------
-- Challenge 2: Top 10 Capital Cities by City Population Percentage
-- ------------------------------------------

-- Calculate city_perc: (city_proper_pop / metroarea_pop) * 100
-- Only include capital cities in Europe or the Americas
-- Exclude rows with NULL in metroarea_pop
-- Sort by city_perc descending and limit to top 10 results
SELECT name, country_code, city_proper_pop, metroarea_pop, 
       city_proper_pop / metroarea_pop * 100 AS city_perc
FROM cities
WHERE name IN (
    SELECT capital 
    FROM countries
    WHERE continent LIKE '%Europe%' OR continent LIKE '%America%'
  )
  AND metroarea_pop IS NOT NULL
ORDER BY city_perc DESC
LIMIT 10;

