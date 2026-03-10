show databases;
use xyz;
show tables;
insert into sales values(4,"shaily","gzb","Admin",30000);
select * from sales;
select * from sales where city="gzb";
select * from sales where department="Admin";
select * from sales where amount between 22000 and 26000;
select * from sales where name like "s%";
select * from sales where not city="noida" and amount>=25000;
insert into sales values(5,"sejal","banaras","hr",23000);
insert into sales (id,name,city,department) values(6,"arpit","gzb","acc");
select * from sales where amount is null;
select * from sales where amount is not null;
select * from sales order by name;
select * from sales order by amount desc limit 1 offset 1;
select * from sales order by amount limit 1 offset 1;
select * from sales where name like "s%" order by amount desc limit ;
select distinct * from sales;
select distinct department from sales;

select * from sales;
select sum(amount) from sales;
select sum(amount) from sales where department= "Admin";
select sum(amount) as total_amount from sales;
select avg(amount) from sales;
select avg(amount) from sales where department= "Admin";
select avg(amount) as total_amount from sales;
select department ,sum(amount) from sales group by department;
 select department,sum(amount) as total from sales group by department having total>10000;
 create database movies;
 use movies;
 show tables;
 select count(*) from movies;
 select * from movies;
 # total movie count score >8.0
 select count(name) from movies where score>8.0; 
 # find comedy movie having max budget
SELECT name, budget FROM movies WHERE genre = 'Comedy' ORDER BY budget DESC LIMIT 1;
# lowest comedy movie in us 
select name,budget from movies where country ="united states" order by budget asc limit 1;
# total country
SELECT COUNT(*) FROM movies WHERE country = 'united states';
select count(distinct country) from movies;

 create database practise;
 use practise;
 create table user(
 emp_id int primary key auto_increment,
 name varchar(20),
 email varchar(20) unique key not null,
 pancard varchar(12),
 address varchar(100)
 );
 drop table user;
 desc user;
 insert into user(name,email,pancard,address) values("tushar","tushar@gamil.com","TPS4060","gzb");
 select * from user;
 replace into user values(2,"shaily","shaily@12","STG!@#$","noida");
 use movies;
 desc movies;
 select * FROM movies where score>5.9 and genre="Comedy";
create index idx_score on movies (score);
select * from movies where score>5.9;

drop database shaily;

create database company;
use company;
show tables;
select*from paymentss;
select*from customerss;
select * from customerss as c right join paymentss as p on c.customer_id=p.customer_id
union select * from customerss as c left join paymentss as p on c.customer_id=p.customer_id;
select * from customerss as c cross join paymentss as p on c.customer_id=p.customer_id;


show databases;
use practise;
create table emp1(
id int primary key auto_increment,
name varchar (100) not null ,
exp int,
city varchar (100),
salary int
);
insert into emp1 values(2,"shaily",3,"banras",30000);
select*from emp1;

update emp1 set salary=50000 where city="gzb";
set sql_safe_updates=0;

create table emp2(
id int primary key auto_increment,
fullname varchar(100) not null,
exp int,
city varchar (100),
salary int
);
insert into emp2 values(4,"mukul tahkur",2,"noida",50000);
select*from emp2;
select fullname ,upper(fullname) from emp2;
select concat (fullname,' ',city) from emp2;
select fullname,locate(' ',fullname) from emp2;
select fullname,substring(fullname,1,locate(' ',fullname)) from emp2;
select fullname,substring(fullname,locate(' ',fullname)+1) from emp2;

# date function
select curdate();

create table emp3(
id int primary key auto_increment,
fullname varchar(100) not null,
dob date,
exp int,
city varchar (100),
salary int
);
insert into emp3 values(2,"shaily thakur","2006-07-07",2,"noida",50000);
select*from emp3;

select year(dob) from emp3;
select day(dob) from emp3;
select monthname(dob) from emp3;
select datediff(curdate(),dob) from emp3;

show databases;
use practise;
select * from emp2;
select avg(salary) from emp2;
select * from emp2 where salary < (select avg(salary) from emp2) ;
select * from emp2 where salary < (select max(salary) from emp2) ;

# windows function
create table sales(
name varchar(100),
month varchar(100),
city varchar(100),
amount int
);
insert into sales values("mukul","march","noida",14000);
select* from sales;
select name, month,city,amount,sum(amount) over (partition by city) from sales;
select name, month,city,amount,sum(amount) over (order by name ) from sales;

select name, month,city,amount,lag(amount) over (partition by city) from sales;
select name, month,city,amount,
lag(amount) over (partition by city) as p_month,
amount,lag(amount) over (partition by city) as difference
 from sales;
select name, month,city,amount,
lag(amount) over (partition by city) as p_month,
amount,lead(amount) over (partition by city) as difference
 from sales;
select name, month,city,amount,avg(amount) over (partition by city) from sales where city="noida";

select *, max(amount) over (partition by city order by month) from sales;
 
 delimiter //
 create procedure getamount(a int)
 begin
 select * from sales order by amount desc limit a ;
 end //
 call getamount(5);
 
 delimiter//
 create procedure getcitynoida()
 begin
 select*from sales where city="noida";
 end//
 
 select * from movies;
#select count(name) from movies where score>8.0 and runtime>100; 
SELECT count(*)FROM movies WHERE name like "S%" and genre = 'Action';
