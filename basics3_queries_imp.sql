USE ARIKARAN;
SELECT * FROM employee;
-- string func
select id,UCASE(ename) from employee;

select id,ename,concat("Rs",sal)salary from employee;
select id,ename,char_length(ename)count_of_char from employee;
-- date
select now();
select DATE(now());
select curdate();
select date_format(curdate(),"%d/%m/%y");
select datediff(curdate(),"2022-02-13");
select date_add(curdate() ,interval 2 week);

-- group by,having

select job_desc, avg(sal)  from employee group by job_desc;
select job_desc,count(id) from employee group by job_desc;

-- having
select job_desc , count(id) from employee group by job_desc 
having avg(sal)>100000;

select job_desc , count(id) from employee group by job_desc 
having count(id)>1;
-- constraints
drop table employee;
 create table employee(
 id int primary key auto_increment, -- autoincrement constraint
 ename varchar(25) not null, -- not null constraint
 job_desc varchar(30) default 'unassigned', -- default constraint
 sal int
);
DROP TABLE EMPLOYEE;
create table employee(
 id int primary key auto_increment,
 ename varchar(25), 
 job_desc varchar(30) ,
 sal int
);
-- adding constraints to already created table

ALTER TABLE EMPLOYEE MODIFY ename varchar(25) not null;
alter table employee modify job_desc varchar(25) default 'unassinged';
alter table employee modify id int auto_increment;

--

Describe  employee;





