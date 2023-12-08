create database ProductsDb
on primary (name='Products_Db',Filename='C:\Users\kotap\OneDrive\Desktop\Phase3 Assignments\Assignment 1\Products_Db.mdf',
size=8MB,MaxSize=64MB,filegrowth=8MB)
log on (name='Products_Db_log',filename='C:\Users\kotap\OneDrive\Desktop\Phase3 Assignments\Assignment 1\Product_Db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS



use ProductsDb
create table Products
(PId int identity(50,1) primary key,
PName nvarchar(50) not null,
PPrice int check(PPrice>=50 and PPrice<=100000),
PCompany nvarchar(50) check(PCompany ='Samsung' OR PCompany='Apple' OR PCompany='Redmi' OR PCompany='HTC'),
PQuantity int check(PQuantity>=1) default 1 
)
drop table Products
insert into Products values('Mobile',1000,'Samsung',1)
insert into Products values('Laptop',10000,'Apple',1)
insert into Products values('TV',5000,'Redmi',1)
insert into Products values('PC',6000,'HTC',1)
insert into Products values('SmartWatch',5000,'Redmi',1)

select * from Products