use arikaran;
-- drop table studentdata; commented


drop table student;
create table student(
  id int primary key,
  name varchar(25),
  gpa decimal(3,2)
  
);
insert into student values(1,"Ari",7.5),
(2,"ram",8.0),
(3,"monisha",9.9);
alter table student add std int;

select * from student;