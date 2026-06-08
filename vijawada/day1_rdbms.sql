create table emp_data(
  empid varchar(50) not null,
  empname text,
  email text,
  SAPID varchar(20) not null,
  dep_name text,
  mobile_no int,
  loc text,
  primary key (empid)
);

create table dep_data(
  depid varchar(50),
  depname varchar(50),
  building varchar(50),
  floor_name varchar(50),
  primary key (depid)
);

create table emp_dep_data(
  id varchar(50),
  emp_id varchar(50),
  dep_id varchar(50),
  DOJ varchar(50),
  foreign key (emp_id) references emp_data(empid),
  foreign key (dep_id) references dep_data(depid),
  primary key (id)
);

insert into emp_data values(78647,"Tejesh","tejes@gmail.com",21398822,"DevOps",987463212,"Japan");
insert into emp_data(empid,empname,SAPID,loc) values(52363798,"Balasack",43240932,"Madurai");
insert into emp_data(empid,empname,SAPID,loc) values(52363777,"Vini",432421,"Paris");
insert into emp_data(empid,empname,SAPID,loc) values(52363799,"9a9a",497282,"London");

insert into dep_data values("1","CS","1st Tower","1st floor");
insert into dep_data values("2","IT","2nd Tower","Ground floor");
insert into dep_data values("3","HR","1st Tower","2nd floor");
insert into dep_data values("4","Operations","2nd Tower","3rd floor");
select * from dep_data;

insert into emp_dep_data(id,emp_id,dep_id,DOJ) values(1,52363798,"1","10-10-2025");
insert into emp_dep_data(id,emp_id,dep_id,DOJ) values(2,52363777,"2","7-9-2025");
insert into emp_dep_data(id,emp_id,dep_id,DOJ) values(3,52363799,"3","6-8-2025");
select * from emp_dep_data;

alter table emp_data add gender text;

update emp_data set gender="Male" where empid=78647;
update emp_data set gender="Male" where empid=52363798; 

select * from emp_data;
select * from emp_data where loc="Paris";
select * from emp_data where gender="Male";

alter table emp_data drop column email;
select * from emp_data;
