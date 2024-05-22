USE cooking_show;

-- QUESTION 3.1
select country_name,first_name,last_name,avg(grade1) as average1, avg(grade2) as average2, avg(grade3) as average3 from is_a_contestant group by first_name,last_name,country_name;

-- QUESTION 3.2
select first_name,last_name from expertise where country_name='Germany';

select distinct first_name,last_name from is_a_contestant where country_name='Germany' AND episode_year=2024;

-- QUESTION 3.3

select first_name,last_name,recipe_num
from (
    select first_name, last_name, COUNT(*) as recipe_num, rank() over (order by recipe_num desc) as rk
    from is_a_contestant 
    where CONCAT(first_name, last_name) in (select concat(first_name, last_name) from cook where age < 30)
    group by first_name, last_name
) as s 
where s.rk = 1;

-- QUESTION 3.4
 select first_name,last_name from cook where concat(first_name,last_name) not in (select concat(first_name,last_name) from is_a_critic);

-- QUESTION 3.5

select episode_year,first_name,last_name,c1 from (
select episode_year,first_name,last_name, count(*) as c1 from is_a_critic group by episode_year,first_name,last_name)
as table1
where c1 in ( select c1 from (
select episode_year,first_name,last_name,c1,count(*) as c2 from (
select episode_year,first_name,last_name, count(*) as c1 from is_a_critic group by episode_year,first_name,last_name)
as table2
where c1>=2 -- MUST BE c1>3 
group by episode_year,c1
having c2>1) as table3);

-- QUESTION 3.6

-- QUESTION 3.7

select first_name,last_name from 
(select first_name,last_name, count(*) as num from is_a_contestant group by first_name,last_name)
as freq 
where freq.num <= ( 
select max(c) from (
select first_name,last_name,count(*) as c from is_a_contestant group by first_name,last_name)
as table1) - 5;

-- QUESTION 3.8

-- QUESTION 3.9
select episode_year,avg(recipe_carbs) from is_a_contestant as a inner join recipes as b on a.recipe_name=b.recipe_name group by episode_year;

-- QUESTION 3.10

-- QUESTION 3.11

-- QUESTION 3.12

select episode_year,episode,average_difficulty from (
select episode_year,episode,a.recipe_name,avg(recipe_difficulty) as average_difficulty, rank() over (partition by episode_year order by average_difficulty desc) as rk from is_a_contestant as a inner join recipes as b on a.recipe_name=b.recipe_name group by episode_year,episode)
as res 
where res.rk=1;

-- QUESTION 3.13

-- QUESTION 3.14

-- QUESTION 3.15

