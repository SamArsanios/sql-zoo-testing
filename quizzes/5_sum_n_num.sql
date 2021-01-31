-- 5. SUM and COUNT Quiz

-- 1. Select the statement that shows the sum of population of all countries in 'Europe'
SELECT SUM(population) FROM bbc WHERE region = 'Europe'

-- 2. Select the statement that shows the number of countries with population smaller than 150000
SELECT COUNT(name) FROM bbc WHERE population < 150000

-- 3. Select the list of core SQL aggregate functions
AVG(), COUNT(), MAX(), MIN(), SUM()

-- 4. Select the result that would be obtained from the following code:
 SELECT region, SUM(area) FROM bbc WHERE SUM(area) > 15000000 GROUP BY region
--   No result due to invalid use of the WHERE function

-- 5. Select the statement that shows the average population of 'Poland', 'Germany' and 'Denmark'
SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark')

-- 6. Select the statement that shows the medium population density of each region
SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region

-- 7. Select the statement that shows the name and population density of the country with the largest population
SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc)
