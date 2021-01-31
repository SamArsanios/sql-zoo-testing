-- Exercise-0 -- SELECT basics --> Some simple queries to get you started

SELECT population FROM world WHERE name = 'Germany';

SELECT name, population FROM world WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world WHERE area BETWEEN 200000 AND 250000;





-- Exercise-1 SELECT name --> Some pattern matching queries

-- 1. Find the country that start with Y
SELECT name FROM world WHERE name LIKE 'Y%';

-- 2. Find the countries that end with y
SELECT name FROM world WHERE name LIKE '%y';

-- 3. Find the countries that contain the letter x
SELECT name FROM world WHERE name LIKE '%x%';

-- 4. Find the countries that end with land
SELECT name FROM world WHERE name LIKE '%land';

-- 5. Find the countries that start with C and end with ia
SELECT name FROM world WHERE name LIKE 'c%ia';

-- 6. Find the country that has oo in the name
SELECT name FROM world WHERE name LIKE '%oo%';

-- 7. Find the countries that have three or more a in the name
SELECT name FROM world WHERE name LIKE '%a%a%a%';

-- 8. Find the countries that have "t" as the second character.
SELECT name FROM world WHERE name LIKE '_t%' ORDER BY name;

-- 9. Find the countries that have two "o" characters separated by two others. Lesotho and Moldova Mongolia Morocco
SELECT name FROM world WHERE name LIKE '%o__o%';

-- 10. Find the countries that have exactly four characters.
SELECT name FROM world WHERE name LIKE '____';

-- 11. Find the country where the name is the capital city.
SELECT name, capital, continent FROM world WHERE name LIKE capital;
SELECT name FROM world WHERE name = capital;

-- 12. Find the country where the capital is the country plus "City".
SELECT name FROM world WHERE capital = concat(name, ' City');

-- 13. Find the capital and the name where the capital includes the name of the country.
SELECT capital, name FROM world WHERE capital LIKE concat('%', name, '%');

-- 14. Find the capital and the name where the capital is an extension of name of the country.
-- You should include Mexico City as it is longer than Mexico. You should not include Luxembourg as the capital is the same as the country.

SELECT capital, name FROM world WHERE capital LIKE concat('%', name, '%') AND capital != name; --capital > name

-- 15. Show the name and the extension where the capital is an extension of name of the country.
SELECT name, REPLACE(capital, name, '') FROM world WHERE capital LIKE concat('%', name, '%') AND capital != name;