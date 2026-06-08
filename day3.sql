create table vini_frnd(
name text,
size text,
city text,
 age int
);

insert into vini_frnd values("Bala","M","Madurai",17);
insert into vini_frnd values("Tejas","L","Chennai",17);
insert into vini_frnd(name,age) values("Poola",67);
insert into vini_frnd(name) values("Guy");

alter table vini_frnd add height text;
alter table vini_frnd add id int;

update vini_frnd set name = "Balasubramaniam" where name = "Poola";
update vini_frnd set id=1,height = "5'7" where name = "Bala";
update vini_frnd set id=2,height = "5'4" where name = "tejas";
update vini_frnd set id=3,height = "5'10"where name = "Balasubramaniam";
update vini_frnd set id=4,height = "6'0" where name = "Guy";

select * from vini_frnd;
select * from vini_frnd where size=null or city = null;

delete from vini_frnd where name = "Guy";

select * from vini_frnd;
select * from vini_frnd where city =  "Madurai";
select name from vini_frnd where age > 20 and id<=4;
select name from vini_frnd where city is null;
select count(name) as "Number of friends" from vini_frnd;
select avg(age) as "Average age" from vini_frnd;
select max(age) as "Max age" from vini_frnd;
select min(age) as "Min age" from vini_frnd;
select * from vini_frnd order by name asc;
select * from vini_frnd order by city desc;
select * from vini_frnd order by age asc;
select * from vini_frnd where name like '%a';

select count(id),name from vini_frnd group by name;
select count(id),name from vini_frnd group by name having count(id)<=2;