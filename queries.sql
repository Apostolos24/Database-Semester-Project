
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
where c1>3  
group by episode_year,c1
having c2>1) as table3)order by c1 DESC;

-- QUESTION 3.6
WITH recipe_tags AS (
    SELECT 
        ia.recipe_name,
        t1.tag_name AS tag1,
        t2.tag_name AS tag2
    FROM 
        is_a_contestant ia
        JOIN tags t1 ON ia.recipe_name = t1.recipe_name
        JOIN tags t2 ON ia.recipe_name = t2.recipe_name
    WHERE 
        t1.tag_name < t2.tag_name
),
tag_pairs AS (
    SELECT 
        tag1,
        tag2,
        COUNT(*) AS pair_count
    FROM 
        recipe_tags
    GROUP BY 
        tag1, tag2
),
top_3_pairs AS (
    SELECT 
        tag1,
        tag2,
        pair_count
    FROM 
        tag_pairs
    ORDER BY 
        pair_count DESC
    LIMIT 3
)
SELECT 
    tag1, 
    tag2, 
    pair_count
FROM 
    top_3_pairs;

WITH recipe_tags AS (
    SELECT 
        ia.recipe_name,
        t1.tag_name AS tag1,
        t2.tag_name AS tag2
    FROM 
        is_a_contestant ia
        JOIN tags t1 FORCE INDEX (get_tags) ON ia.recipe_name = t1.recipe_name
        JOIN tags t2 FORCE INDEX (get_tags) ON ia.recipe_name = t2.recipe_name
    WHERE 
        t1.tag_name < t2.tag_name
),
tag_pairs AS (
    SELECT 
        tag1,
        tag2,
        COUNT(*) AS pair_count
    FROM 
        recipe_tags
    GROUP BY 
        tag1, tag2
),
top_3_pairs AS (
    SELECT 
        tag1,
        tag2,
        pair_count
    FROM 
        tag_pairs
    ORDER BY 
        pair_count DESC
    LIMIT 3
)
SELECT 
    tag1, 
    tag2, 
    pair_count
FROM 
    top_3_pairs;

EXPLAIN
WITH recipe_tags AS (
    SELECT 
        ia.recipe_name,
        t1.tag_name AS tag1,
        t2.tag_name AS tag2
    FROM 
        is_a_contestant ia
        JOIN tags t1 ON ia.recipe_name = t1.recipe_name
        JOIN tags t2 ON ia.recipe_name = t2.recipe_name
    WHERE 
        t1.tag_name < t2.tag_name
),
tag_pairs AS (
    SELECT 
        tag1,
        tag2,
        COUNT(*) AS pair_count
    FROM 
        recipe_tags
    GROUP BY 
        tag1, tag2
),
top_3_pairs AS (
    SELECT 
        tag1,
        tag2,
        pair_count
    FROM 
        tag_pairs
    ORDER BY 
        pair_count DESC
    LIMIT 3
)
SELECT 
    tag1, 
    tag2, 
    pair_count
FROM 
    top_3_pairs;

EXPLAIN
WITH recipe_tags AS (
    SELECT 
        ia.recipe_name,
        t1.tag_name AS tag1,
        t2.tag_name AS tag2
    FROM 
        is_a_contestant ia
        JOIN tags t1 FORCE INDEX (get_tags) ON ia.recipe_name = t1.recipe_name
        JOIN tags t2 FORCE INDEX (get_tags) ON ia.recipe_name = t2.recipe_name
    WHERE 
        t1.tag_name < t2.tag_name
),
tag_pairs AS (
    SELECT 
        tag1,
        tag2,
        COUNT(*) AS pair_count
    FROM 
        recipe_tags
    GROUP BY 
        tag1, tag2
),
top_3_pairs AS (
    SELECT 
        tag1,
        tag2,
        pair_count
    FROM 
        tag_pairs
    ORDER BY 
        pair_count DESC
    LIMIT 3
)
SELECT 
    tag1, 
    tag2, 
    pair_count
FROM 
    top_3_pairs;

-- QUESTION 3.7

select first_name,last_name 
from (select first_name,last_name, count(*) as num from is_a_contestant group by first_name,last_name) as freq 
where freq.num <= ( select max(c) 
		    from (select count(*) as c from is_a_contestant group by first_name,last_name) as table1)
                    - 5;

-- QUESTION 3.8

select episode_year,episode,total_equipment from (
select episode_year,episode,sum(quantity) as total_equipment, rank() over (order by total_equipment desc) as rk from is_a_contestant as a join requires_eq as b on a.recipe_name = b.recipe_name group by episode_year,episode)
as table1 
where table1.rk = 1;

WITH EquipmentTotals AS (
    SELECT 
        ic.episode_year,
        ic.episode,
        SUM(req.quantity) AS total_equipment,
        RANK() OVER (PARTITION BY ic.episode_year, ic.episode ORDER BY SUM(req.quantity) DESC) AS rk
    FROM 
        is_a_contestant AS ic
    JOIN 
        requires_eq AS req ON ic.recipe_name = req.recipe_name
    GROUP BY 
        ic.episode_year,
        ic.episode
)
SELECT 
    episode_year,
    episode,
    total_equipment
FROM 
    (
        SELECT 
            *,
            ROW_NUMBER() OVER (ORDER BY total_equipment DESC) AS row_num
        FROM 
            EquipmentTotals
    ) AS ranked_totals
WHERE 
    row_num = 1;

explain select episode_year,episode,total_equipment from (
select episode_year,episode,sum(quantity) as total_equipment, rank() over (order by total_equipment desc) as rk from is_a_contestant as a join requires_eq as b on a.recipe_name = b.recipe_name group by episode_year,episode)
as table1 
where table1.rk = 1;

explain WITH EquipmentTotals AS (
    SELECT 
        ic.episode_year,
        ic.episode,
        SUM(req.quantity) AS total_equipment,
        RANK() OVER (PARTITION BY ic.episode_year, ic.episode ORDER BY SUM(req.quantity) DESC) AS rk
    FROM 
        is_a_contestant AS ic
    JOIN 
        requires_eq AS req ON ic.recipe_name = req.recipe_name
    GROUP BY 
        ic.episode_year,
        ic.episode
)
SELECT 
    episode_year,
    episode,
    total_equipment
FROM 
    (
        SELECT 
            *,
            ROW_NUMBER() OVER (ORDER BY total_equipment DESC) AS row_num
        FROM 
            EquipmentTotals
    ) AS ranked_totals
WHERE 
    row_num = 1;

-- QUESTION 3.9

select episode_year,avg(recipe_carbs) from is_a_contestant as a inner join recipes as b on a.recipe_name=b.recipe_name group by episode_year;

-- QUESTION 3.10

select distinct *
from	(
		select a.country_name, a.num + b.num as sum_num
		from	(
				select country_name, episode_year, count(*) as num
				from is_a_contestant
				group by country_name, episode_year 
				) as a, 
				(
				select country_name, episode_year, count(*) as num
				from is_a_contestant
				group by country_name, episode_year 
				) as b
		where (a.episode_year - b.episode_year) = 1 and a.country_name = b.country_name and a.num >= 3 and b.num >= 3
		) as T
		join
		(
		select a.country_name, a.num + b.num as sum_num
		from	(
				select country_name, episode_year, count(*) as num
				from is_a_contestant
				group by country_name, episode_year 
				) as a, 
				(
				select country_name, episode_year, count(*) as num
				from is_a_contestant
				group by country_name, episode_year 
				) as b
		where (a.episode_year - b.episode_year) = 1 and a.country_name = b.country_name and a.num >= 3 and b.num >= 3
		) as R
		using (sum_num);
        

-- QUESTION 3.11
/*
SELECT
c.first_name AS critic_first_name,
    c.last_name AS critic_last_name,
    co.first_name AS cook_first_name,
    co.last_name AS cook_last_name,
    SUM(ia.grade1 + ia.grade2 + ia.grade3) AS total_score
FROM
    is_a_critic ic
JOIN
    is_a_contestant ia ON ic.episode_year = ia.episode_year AND ic.episode = ia.episode
JOIN
    cook co ON ia.first_name = co.first_name AND ia.last_name = co.last_name
JOIN
    cook c ON ic.first_name = c.first_name AND ic.last_name = c.last_name
GROUP BY
    c.first_name, c.last_name, co.first_name, co.last_name
ORDER BY
    total_score DESC
LIMIT 5;
*/

select critic_name,critic_surname,contestant_name,contestant_surname,sum(grade) as total_grade  from
(select a.first_name as critic_name,a.last_name as critic_surname,b.first_name as contestant_name,b.last_name as contestant_surname,
case
    when a.id=1 then b.grade1
    when a.id=2 then b.grade2
    when a.id=3 then b.grade3
end as grade
from 
is_a_critic as a inner join is_a_contestant as b on a.episode_year=b.episode_year and a.episode=b.episode) as t
group by critic_name,critic_surname,contestant_name,contestant_surname
order by total_grade desc
limit 5;

-- QUESTION 3.12

SELECT episode_year, episode, average_difficulty 
FROM (
    SELECT episode_year, episode, a.recipe_name, AVG(recipe_difficulty) AS average_difficulty, 
           RANK() OVER (PARTITION BY episode_year ORDER BY AVG(recipe_difficulty) DESC) AS rk 
    FROM is_a_contestant AS a 
    INNER JOIN recipes AS b ON a.recipe_name = b.recipe_name 
    GROUP BY episode_year, episode
) AS res 
WHERE res.rk = 1 
ORDER BY average_difficulty DESC;

/*
select episode_year,episode,average_difficulty from (
select episode_year,episode,a.recipe_name,avg(recipe_difficulty) as average_difficulty, rank() over (partition by episode_year order by average_difficulty desc) as rk from is_a_contestant as a inner join recipes as b on a.recipe_name=b.recipe_name group by episode_year,episode)
as res 
where res.rk=1;
*/
-- QUESTION 3.13

select episode_year,episode,tot_prof_level from (
select episode_year,episode,sum(prof_level) as tot_prof_level, rank() over (order by tot_prof_level) as rk from (
select episode_year,episode,sum(status_to_int(cook_status)) as prof_level from is_a_contestant as a join cook as b on (concat(a.first_name,a.last_name) = concat(b.first_name,b.last_name)) group by episode_year,episode
union
select episode_year,episode,sum(status_to_int(cook_status)) as prof_level from is_a_critic as a join cook as b on (concat(a.first_name,a.last_name) = concat(b.first_name,b.last_name)) group by episode_year,episode)
as final
group by episode_year,episode)
as finalfinal
where finalfinal.rk = 1;


-- select episode_year,episode,a.first_name,a.last_name,status_to_int(cook_status) as prof_level from is_a_contestant as a join cook as b on (concat(a.first_name,a.last_name) = concat(b.first_name,b.last_name)) order by episode_year,episode;

-- QUESTION 3.14

select sec_name, appearences from (
select sec_name,count(*) as appearences, rank() over (order by appearences desc) as rk from is_a_contestant as a join recipe_belongs_to as b on a.recipe_name=b.recipe_name group by sec_name)
as t 
where t.rk = 1;

-- QUESTION 3.15

select group_name from food_groups where group_name not in (
select distinct group_name from is_a_contestant as a join requires_ingr as b join ingredients as c on (a.recipe_name = b.recipe_name and b.ingr_name = c.ingr_name));
