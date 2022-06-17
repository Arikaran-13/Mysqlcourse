use arikaran;

create table employee(
empid int primary key auto_increment, ename varchar(25), job varchar(25),
 deptid int , sal int,
 foreign key (deptid) references dept(deptid)
);
insert into employee values(1,"aarthi","hr",1,20000);
insert into employee values(2,"aarthi","hr",2,20000);
insert into employee values(3,"aaron","admin",3,50000);
insert into employee values(4,"alex","analyst",4,40000);
insert into employee values(5,"bob","engineer",5,50000);
insert into employee values(6,"randy","sales",10,30000);
insert into employee values(7,"peter parker","hr",7,20000);
insert into employee values(8,"harini","testing",10,10000);

select * from employee;
select * from dept;
-- a
create view emp_branch as 
select employee.empid,employee.ename,employee.sal,dept.dloc
from employee
join dept
on employee.deptid = dept.deptid;

-- b
create view edept_10 as 
select empid,ename from employee where sal>5000 and deptid=10;

-- c
drop view edept_10;
drop view emp_branch;

-- d
create view emp_branch as 
select employee.empid,employee.ename,employee.sal,dept.dloc
from employee
join dept
on employee.deptid = dept.deptid;
-- d
update  employee set sal = sal+1000;
select * from emp_branch;