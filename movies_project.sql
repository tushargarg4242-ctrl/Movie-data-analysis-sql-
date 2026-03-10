-- Movie Industry Analytics using SQL and Power BI
use movies;
show tables;
select * from movies 
limit 10;

-- count of rows  
select count(*) from movies;

describe movies;
-- format the budget to bigint
UPDATE movies
SET budget = NULL
WHERE budget = '';

ALTER TABLE movies
MODIFY COLUMN budget BIGINT;

UPDATE movies
SET gross = NULL
WHERE gross = '';

ALTER TABLE movies
MODIFY COLUMN gross BIGINT;

-- check for null value
SELECT *FROM movies
where name is null
or rating is null
or genre is null
or year is null
or released is null
or score  is null
or votes is null
or director is null
or writer is null
or star is null
or country is null
or budget is null
or gross is null 
or company is null
or runtime is null ; 

-- check for duplicate
-- Duplicate records were checked using movie title and release year as a composite key to identify repeated entries.

SELECT name, year, COUNT(*)
FROM movies
GROUP BY name, year
HAVING COUNT(*) > 1;

-- EDA – Exploratory Data Analysis.
-- 1 Movies per year
SELECT year, COUNT(*) 
FROM movies
GROUP BY year
ORDER BY year;

-- 2 Top rated movies
SELECT name, score
FROM movies
ORDER BY score DESC
LIMIT 10;

-- 3 Highest grossing movies
SELECT name, gross
FROM movies
ORDER BY gross DESC
LIMIT 10;

-- 4 Most Common Genres
select genre,count(*) as total_movies
from movies
group by genre
order by total_movies desc;

-- 5 Average Rating by Genre
select genre,avg(score) as avg_rating
from movies
group by genre
order by avg_rating desc;

-- 6 Top Directors by Average Rating
select director , avg(score) as avg_score
from movies
group by director
order by avg_score desc
limit 10;

-- 7 Top 10 Movies by Votes (Most Popular)
select name,votes
from movies
order by votes desc 
limit 10;

-- 8 Average Runtime of Movies
select avg(runtime) as avg_runtime
from movies;

-- 9 Top Production Companies
select company, count(*) as total_movies 
from movies
group by company
order by total_movies desc
limit 10;

-- 10 Profit of Movies (Gross − Budget) -- Some movies with moderate budgets generated very high profits.
select name, budget, gross,
(gross-budget) as profit 
from movies
where budget is not null
and gross is not null 
order by profit desc 
limit 10;

-- 11 ROI (Return on Investment)-- Low-budget movies often generate the highest ROI.
SELECT name, budget, gross,
ROUND((gross - budget)/budget,2) AS ROI
FROM movies
WHERE budget > 0 
AND gross IS NOT NULL
ORDER BY ROI DESC
LIMIT 10;

-- 12 Budget vs Genre Relationship -- Some genres generate higher revenue despite lower budgets.
SELECT genre,
ROUND(AVG(budget),0) AS avg_budget,
ROUND(AVG(gross),0) AS avg_gross
FROM movies
GROUP BY genre
ORDER BY avg_gross DESC;

-- 13 Budget vs Gross Relationship
SELECT 
ROUND(AVG(budget),0) AS avg_budget,
ROUND(AVG(gross),0) AS avg_gross
FROM movies
WHERE budget IS NOT NULL 
AND gross IS NOT NULL;
 
 -- 14 Top actors by average movie rating -- Actors appearing in multiple highly rated films tend to have higher average movie scores.
SELECT star, 
ROUND(AVG(score),2) AS avg_rating,
COUNT(*) AS total_movies
FROM movies
GROUP BY star
HAVING COUNT(*) >= 5
ORDER BY avg_rating DESC
LIMIT 10;

-- 15 Best Director–Genre Combinations -- Some directors consistently perform better within specific genres.
SELECT director, genre,
ROUND(AVG(score),2) AS avg_rating,
COUNT(*) AS total_movies
FROM movies
GROUP BY director, genre
HAVING COUNT(*) >= 3
ORDER BY avg_rating DESC
LIMIT 10;



