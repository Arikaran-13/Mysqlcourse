
use employee;

-- a
start Transaction;
-- b
create table employee(
empid int primary key auto_increment, ename varchar(25), 
job varchar(25), sal int
);
-- c
insert into employee values(1,"aarthi","HR",250000),
(2,"mohan", "sales",20000),
(3,"kumar","engineer",35000),
(4,"salim","analyst",230000);
-- e
alter table employee add dept varchar(25);
update  employee set dept="HR" where empid=1;
update  employee set dept="admin" where empid=2;
update  employee set dept="Qa" where empid=3;
update  employee set dept="dev" where empid=4;
-- f
commit;




