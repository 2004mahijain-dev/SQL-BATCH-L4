-- group by
use world;
select region, count(name), count(continent) from country group by region;
select region, avg(population) from country group by region;

-- count cities which have a population of more than 1 lakh
-- where ( sabse phle exexute ) => group by => count()
select district, count(name) from city where population>10000 group by district;

select district, count(name) as totalcity from city group by district;

select * from country;
select count(name) from country where continent='asia' and indepyear>1950;

-- get total country which got indepyear afyer 1950 in each continent
select continent, count(name) from country where indepyear >1950 group by continent;
-- having to filter data based on aggregate column like sum, count, max
select continent, sum(population) from country group by continent having sum(population)>100;

-- where filter data from table only execute when data is original table
-- having filter data on aggregate column

select continent, sum(population) from country where lifeexpextancy > 35.0 group by continent;
-- you need to find out the total countries for each government form where the total no. of countries should be greater than 30
-- only for the countries having their capital greater than 30 and total population greater than 3 lakh

select governmentform, count(name) from country group by governmentform having count(name) > 30;
select governmentform, count(name), sum(population) from country where capital>30 group by governmentform
having sum(population)>300000;

select continent, count(name) from country group by continent, region;





