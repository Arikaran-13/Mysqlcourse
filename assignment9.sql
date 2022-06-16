use stockdb;
select * from stockMaster;
select * from instock;
select * from outstock;

-- a
insert into instock values(6,"2022-01-01",65,1700);
insert into instock values(7,"2022-02-01",100,1800);
insert into outstock values (8,"2022-12-04",89,2000);
insert into outstock values(9,"2022-02-01",100,1800);
insert into stockmaster values (5,"sunglasses",200);
insert into stockmaster values(6,"sun cream",87);

-- b
insert into stockmaster(stock_id,stock_title) values(7,"cricket bag");
insert into stockmaster(stock_id,stock_title) values(8,"medical kit");

-- c
insert into outstock(stock_id,selling_date,quantity_sold) values(8,"2022-02-01",100);
insert into outstock(stock_id,selling_date,quantity_sold) values(9,"2022-08-01",100);

-- d
create table dept(
deptid int primary key auto_increment, 
dname varchar(25),
 dloc varchar(25)
);
insert into dept values 
(1,"admin","chennai"),(2,"manager","cbm"),(3,"hr","chennai");
 drop table employee;
 -- e
create table employee(
empid int primary key auto_increment, ename varchar(25), 
job varchar(25), deptid int , sal int,
foreign  key  (deptid ) references dept(deptid)
);
-- f
insert into employee values(1,"aarthi","HR",1,250000),
(2,"mohan", "sales",2,20000),
(3,"kumar","engineer",3,35000),
(4,"salim","analyst",4,230000),
(5,"abinaya","HR",5,250000),
(6,"Harini","QA",6,190000),
(7,"vedika","Manager",7,350000),
(8,"Arikaran","Dev",8,600000),
(9,"ram","CEO",9,100000);

