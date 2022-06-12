create database StockDB;
use StockDB;
create table StockMaster(
 stock_id int primary key, 
stock_title varchar(45), 
unit_of_measure int
);

create table InStock(
stock_id int primary key,
purchase_date DATE,
quantity_purchased int,
purchase_cost int
);


create table OutStock(
stock_id int primary key,
 selling_date DATE,
 quantity_sold int, 
 selling_price int
 );

 insert into StockMaster values (1,"bat",100),
 (2,"ball",76),
 (3,"cloves",55),
 (4,"pads",99);
 
 insert into InStock values
 (1,"2022-1-1",67,1200),
 (2,"2022-2-1",78,1100),
 (3,"2022-3-1",99,1200),
 (4,"2022-12-4",89,1000);
 
 insert into  OutStock values
 (1,"2022-2-2",67,1300),
 (2,"2022-3-2",78,1300),
 (3,"2022-4-2",89,1500),
 (4,"2023-1-4",89,1700);
 
 -- qs a)
 
 select count(*)  from StockMaster,InStock,OutStock;
 
 
 -- qs b
 select* from StockMaster;
   select* from InStock;
     select* from OutStock;
 
 -- c
  select stock_id,stock_title from StockMaster;
  
  -- d
  select stock_id, purchase_date from InStock;
  
  -- e
  select stock_id, Selling_date, quantity_sold from OutStock;
  
  -- f
  select * from OutStock where quantity_sold>50;
  
  -- g
   select * from InStock,StockMaster,OutStock
   where  'A%';
   
   -- h
    select * from InStock where
    purchase_date between "2022-1-1" and "2022-3-1";