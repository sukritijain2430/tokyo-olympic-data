select * from athletes;
select * from coaches;
select * from entriesgender;
select * from medals;
select * from teams;

select Country,Discipline,count(*) as Total_athletes from athletes
where country in (select team_country from medals where rank between 1 and 5)
group by Country,Discipline
order by  Total_athletes desc;

select Country,count(*) as Total_athletes from athletes
where country in (select team_country from medals where rank between 1 and 5)
group by Country
order by  Total_athletes desc;

select Country,count(*) as Total_athletes from athletes
where country in (select team_country from medals where rank between 1 and 5)
group by Country
order by  Total_athletes desc;


select country,count(*) no_of_coaches from coaches
where country in (select team_country from medals where rank between 1 and 10)
group by Country
order by no_of_coaches desc;

select country,discipline,count(*) no_of_coaches from coaches
where country in (select team_country from medals where rank between 1 and 10)
group by Discipline,country
order by no_of_coaches desc;

select Discipline,avg(male) as avg_male,
avg(female) as avg_female from entriesgender
group by discipline;

select country,count(*) as total_team
from teams
group by country
order by total_team desc;


select team_country from medals where rank between 1 and 5
