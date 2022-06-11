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

select * from employee
