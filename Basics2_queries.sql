use arikaran; 
-- creeating a table employee and coloumn names inside it.
create table employee( 
id int primary key,
ename varchar(25),
job_desc varchar(25),
sal int 

);
-- insering value inside a table
insert into employee values(1,"aarthi","HR",250000),
(2,"mohan", "sales",20000),
(3,"kumar","engineer",35000),
(4,"salim","analyst",230000),
(5,"abinaya","HR",250000),
(6,"Harini","QA",190000),
(7,"vedika","Manager",350000),
(8,"Arikaran","Dev",600000),
(9,"ram","CEO",100000);

-- altering
alter  table employee add exp int;

-- inserting particular coloumn

insert into employee(id,ename) values (10,"ramya");
-- where clause
select * from employee
where ename like 'A%';

select * from employee
where ename="aarthi";

select * from employee
where sal>250000;

select * from employee
where sal<25000;

select * from employee
where ename <> "Arikaran";

select id,ename from employee
where sal>=250000;

select * from employee
where sal between 250000 and 600000;

select * from employee
where ename ="Ramya" or ename="Arikaran";

select * from employee
where job_desc="HR";

-- Like

select * from employee
where ename like '%i%';

select * from employee
where ename like '__i%';

update employee
set job_desc="Manager" WHERE id=3;

select * from employee;


