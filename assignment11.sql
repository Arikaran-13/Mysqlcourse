use stockdb;



create table employee(
empid int primary key auto_increment, ename varchar(25), job varchar(25),
 deptid int , sal int,
 foreign key (deptid) references dept(deptid)
);
insert into dept values 
(5,"admin","chennai"),(6,"manager","cbm"),(7,"hr","chennai"),
(8,"admin","chennai"),(9,"manager","cbm"),(10,"hr","chennai");
 insert into dept values(4,"QA","hyd");


select * from dept;
select * from employee;
insert into employee values(1,"aarthi","hr",1,20000);
insert into employee values(2,"aarthi","hr",2,20000);
insert into employee values(3,"aaron","admin",3,50000);
insert into employee values(4,"alex","analyst",4,40000);
insert into employee values(5,"bob","engineer",5,50000);
insert into employee values(6,"randy","sales",10,30000);
insert into employee values(7,"peter parker","hr",7,20000);
insert into employee values(8,"harini","testing",10,10000);

-- a
 delete from employee sal where sal>10000; 
 select * from employee;
 -- b 
 delete from employee  where deptid=10;
 
select * from employee;

-- c
delete from employee where job="hr";
select * from employee;

-- d
drop table employee;