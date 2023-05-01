CREATE DATABASE project01;
use  project01;
SELECT * from covid_worldwide;
/* list the country name where  population greater than 50,00000*/
SELECT country from covid_worldwide where Population>='50,000,00';
/* list the country name where the death rates are less than 100000*/
select country from covid_worldwide where `Total Deaths`<'100,000';
/*Calculate the percentage of active cases for each country in the table:*/
SELECT Country, (`Active Cases`/`Total Cases`)*100 AS `Percentage of Active Cases` FROM covid_worldwide;
/*fetch the country with highest number of total cases*/
SELECT Country, `Total Cases` FROM covid_worldwide WHERE `Total Cases` = (SELECT MAX(`Total Cases`) FROM covid_worldwide);
/*Calculate the average total cases, total deaths, and total recovered for all countries in the table*/
SELECT AVG(`Total Cases`), AVG(`Total Deaths`), AVG(`Total Recovered`) FROM covid_worldwide;
/*list the 5 countries with the lowest numbers of active cases*/
SELECT Country, `Active Cases` FROM covid_worldwide ORDER BY `Active Cases` asc LIMIT 5;
/*list the top 5 countries with the highest number of tests per million population*/
SELECT Country, (`Total Test`/Population)*1000000 AS `Tests per Million Population` FROM covid_worldwide ORDER BY `Tests per Million Population` DESC LIMIT 5;
/*Calculate the percentage of total cases that have resulted in death for each country in the table*/
SELECT Country, (`Total Deaths`/`Total Cases`)*100 AS `Percentage of Cases Resulting in Death` FROM covid_worldwide;
/*Calculate the total number of tests performed for each country in the table*/
SELECT Country, SUM(`Total Test`) FROM covid_worldwide GROUP BY Country;
/*Calculate the percentage of total tests that are positive for each country */
SELECT Country, (`Total Cases`/`Total Test`)*100 AS `Percentage of Positive Tests` FROM covid_worldwide;


