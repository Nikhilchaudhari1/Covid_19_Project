
create database covid_19_project;
use covid_19_project;

select * from covid_19;
describe covid_19;

# Total Number of country Data 

SELECT COUNT(country) FROM covid_19;

# What are the top 10 countries with the highest number of total cases?

SELECT Country, `Total Cases`
FROM covid_19
ORDER BY `Total Cases` DESC
LIMIT 10;

# Which country has the highest number of active cases currently?

SELECT Country, `Active Cases`
FROM covid_19
ORDER BY `Active Cases` DESC
LIMIT 1;

# What is the total number of deaths across all countries?

SELECT SUM(`Total Deaths`)
FROM covid_19;

# What is the percentage of total deaths to total cases for each country?

SELECT Country, (`Total Deaths` / `Total Cases`)*100 AS Percentage
FROM covid_19;

# What is the total number of tests conducted for each country?

SELECT Country, `Total Test`
FROM covid_19;


 # the total number of deaths, recovered cases, and active cases for each country:

SELECT Country, `Total Deaths`, `Total Recovered`, `Active Cases`
FROM covid_19;


# the total number of tests for a specific country: 'india'

SELECT `Total Test`
FROM covid_19
WHERE Country = 'india';

# the total number of active cases for a specific country: 'india'

SELECT `Active Cases`
FROM covid_19
WHERE Country = 'india';

# Select specific columns from the table

SELECT `Serial Number`, Country, `Total Cases` FROM covid_19;

# Filter records based on a condition

SELECT * FROM covid_19 WHERE Country = 'india';

# Sort records based on a column

SELECT * FROM covid_19 ORDER BY 'Total Cases' DESC;

# Filter records using multiple conditions

SELECT * FROM covid_19 WHERE `Total Cases` > 10000 AND `Total Deaths` > 5000;

# the countries with the highest ratio of total cases to total tests done
    
SELECT Country, (`Total Cases`/`Total Test`) AS Ratio FROM covid_19 ORDER BY Ratio DESC;

# the countries with the highest recovery rate and their corresponding total cases

SELECT Country, `Total Cases` FROM covid_19 WHERE (`Total Recovered`/`Total Cases`)*100 > 90 ORDER BY (`Total Recovered`/`Total Cases`)*100 DESC;

# the countries with more than 90% recovery rate

SELECT Country, (`Total Recovered`/`Total Cases`)*100 AS Recovery_Rate FROM covid_19 WHERE (`Total Recovered`/`Total Cases`)*100 > 90;

# Which country has the highest recovery rate (total recovered / total cases)?

SELECT Country, (`Total Recovered` / `Total Cases`)*100 AS Recovery_Rate
FROM covid_19
ORDER BY Recovery_Rate DESC
LIMIT 1;

# What is the average number of cases, deaths, and tests across all countries?

SELECT AVG(`Total Cases`) AS Avg_Cases, AVG(`Total Deaths`) AS Avg_Deaths, AVG(`Total Test`) AS Avg_Tests
FROM covid_19;


