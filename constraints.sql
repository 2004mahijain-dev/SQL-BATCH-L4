-- stucture( data defination language)
-- create, alter, drop, truncate
use regex1;
create table test1( sno int);


-- dml ( insert, update, delete, merge)
insert into test1 values(10);
insert into test1(sno) values(20);
insert into test1(sno) values(null), (30);
select count(sno), count(*) from test1;
select * from test1;
desc test1;


create table test2( sno int not null, salary int);
insert into test2( sno,salary) values(20,100);
insert into test2( sno, salary) values(21, null);
insert into test2( sno, salary) values(null, 6000); -- error
insert into test2(salary) values(6000); -- error

select * from test2;

create table test3( sno int not null default 80, salary int);
insert into test3(salary) values(1000);
insert into test3(sno) values(5000);

select * from test3;

create table test4( sno int not null, salary int unique default 100);
insert into test4(sno, salary) values(1000, 2000);
insert into test4(sno, salary) values(1001, 2000); -- error duplicate values
insert into test4(sno) values(1000);

insert into test4(sno) values(1500); -- error default 100 already in table
insert into test4(sno,salary) values(1500, null);
insert into test4(sno,salary) values(1600, null);

select * from test4;

create table test7( sno int, salary int,
constraint regex_test7_sno_check check (sno between 1 and 100),
constraint regex_test7_salary_check check (salary in (1000, 2000) ));

insert into test7(sno, salary) values(4,100); 
insert into test7(sno,salary) values(150, 1000); -- error
insert into test7(sno,salary) values(90,1500); -- error

create table test8( sno int primary key, salary int);
insert into test8( sno,salary) values(4, 1000);
insert into test8( sno,salary) values(null, 12233); 

-- foreign key
create table customer1( cid int, cname varchar(20));
insert into customer1 values(10,'aman'), (11,'abhishek');
select * from customer1;

 

