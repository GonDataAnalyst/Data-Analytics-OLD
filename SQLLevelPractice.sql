-- Ver "SQLLevelPractice.docx" 'SQL1'

SELECT
    *
FROM City
WHERE CountryCode = "USA" AND Population >100000


-- Ver "SQLLevelPractice.docx" 'SQL2'

SELECT
    Name
FROM City
WHERE CountryCode = "USA" AND Population > 120000


-- Ver "SQLLevelPractice.docx" 'SQL3'

SELECT
    *
FROM City


-- Ver "SQLLevelPractice.docx" 'SQL4'

SELECT
    *
FROM City
WHERE ID = 1661


-- Ver "SQLLevelPractice.docx" 'SQL5'

SELECT
    *
FROM City
WHERE CountryCode = "JPN"


-- Ver "SQLLevelPractice.docx" 'SQL6'

SELECT
    Name
FROM City
WHERE CountryCode = "JPN"


-- Ver "SQLLevelPractice.docx" 'SQL7'

SELECT
    City,
    State
FROM Station


-- Ver "SQLLevelPractice.docx" 'SQL8'

SELECT
    DISTINCT(City)
FROM Station
WHERE ID%2 = 0

SELECT 
	DISTINCT(CITY)
FROM STATION
WHERE MOD(ID, 2) = 0


-- Ver "SQLLevelPractice.docx" 'SQL9'

SELECT
    COUNT(City) - COUNT(DISTINCT(City))
FROM Station


-- Ver "SQLLevelPractice.docx" 'SQL10'

SELECT 
    CITY, 
    LENGTH(CITY) AS CITY_LENGTH
FROM STATION
WHERE LENGTH(City) = (SELECT MAX(LENGTH(City)) FROM Station)
LIMIT 1;

SELECT 
    CITY, 
    LENGTH(CITY) AS CITY_LENGTH
FROM STATION
WHERE LENGTH(City) = (SELECT MIN(LENGTH(City)) FROM Station)
ORDER BY City
LIMIT 1;


SELECT City, CHAR_LENGTH(City) AS City_Length
FROM STATION
WHERE City = (
    SELECT City
    FROM STATION
    ORDER BY CHAR_LENGTH(City), City
    LIMIT 1
)
OR City = (
    SELECT City
    FROM STATION
    ORDER BY CHAR_LENGTH(City) DESC, City
    LIMIT 1
);