create table vini_frnd(
name text,
size text,
city text,
age int
);

insert into vini_frnd values("Bala","M","Madurai",17);
insert into vini_frnd values("tejas","L","Chennai",17);
insert into vini_frnd(name,age) values("Poola",67);
insert into vini_frnd(name) values("Guy");

select *  from vini_frnd;
select *  from vini_frnd where city="Madurai";
select *  from vini_frnd where age>20;
