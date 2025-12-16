select now(), adddate(now(),2), adddate(now(),interval -3 month );
select now(), subdate(now(),2);

select now(), extract(week from now());
select now(), date_format( now(), 'Month is %M & year is %W');

select distinct(continent) from country;
select count(continent) , count(distinct(continent)) from country;select * from country;
select count(indepyear) from country;
select count(*), count(indepyear) from country;

select distinct continent,region from country;

select count(population),  sum(population), avg(population) from country;
select * from country;

select count(distinct govermentform) from country;
select govermentform from where continent = 'asia';

select country,sum(population) from country where continent = 'africa';

select count(name), sum(population),count(distinct indepyear) from 
country where continent = 'africa';

select count(name), avg(surfacearea), sum(population) from country
where indepyear > 1947 and indepyear < 1998;

SELECT COUNT(*),COUNT(DISTINCT CONTINENT),AVG(POPULATION),
COUNT(CAPITAL) FROM COUNTRY WHERE NAME LIKE 'A%'OR NAME LIKE 'D%';

select count(name) from country where continent = 'Asia';
select count(name) from country where continent = 'Africa';

select continent, count(*) from country group by continent;
select indepyear, count(*) from country group by indepyear;

SELECT continent,COUNT(name),sum(POPULATION),AVG(POPULATION),
max(POPULATION),min(POPULATION),max(indepyear), min(indepyear)
from country group by continent;

select count(name),count(district),count(distinct district)
,sum(population) from city;