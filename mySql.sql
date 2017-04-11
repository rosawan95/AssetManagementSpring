private User user;

truncate table request;

select * from request;
select * from asset_allocation;

truncate table request;
truncate table asset_allocation;

drop table department;
drop table department cascade constraints;

CREATE TABLE Department
(
dept_id NUMBER(10) ,
dept_name VARCHAR2(50),
 CONSTRAINT dept_unique UNIQUE (dept_id)
);

INSERT INTO Department values (1,'Java Domain');
INSERT INTO Department values (2,'Testing Domain');
INSERT INTO Department values (3,'Dot Net Domain');
INSERT INTO Department values (9,'Administration');

insert into request values(1,121,1001,sysdate,10,'Pending');
insert into	request values(2,121,1002,sysdate,15,'Pending');
insert into	request values(3,121,1070,sysdate,30,'Pending');
insert into	request values(4,121,1070,sysdate,30,'Pending');
insert into	request values(5,121,1070,sysdate,30,'Pending');

select * from department;

select * from dept;

select * from asset;

update asset set quantity = 0 where assetId = 1005;
update asset set status ='Not Available' where assetId = 1072;

select * from user_map_employee;

truncate table request;

select * from request;

select * from Asset_Allocation;

truncate table Asset_Allocation;

desc Asset_Allocation;

select * from USER_MASTER;

insert into asset values(1001,'Pendrive','64Gb USB 3.0',110,'Available');
insert into asset values(1002,'Laptop','Thinkpad i7',15,'Available');
insert into asset values(1003,'Mobile','iPhone 6s 32Gb',450,'Available');

update asset set quantity=0 where assetid=1070;


truncate table asset;

drop table employee;

truncate table User_Master;

/*
CREATE TABLE User_Master(
userid VARCHAR2(6) PRIMARY KEY,
username VARCHAR2(15) UNIQUE,
userpassword VARCHAR2(50),
usertype VARCHAR2(10)
);

*/

drop table User_Master;

CREATE TABLE User_Master(
userid VARCHAR2(6) ,
username VARCHAR2(15) ,
userpassword VARCHAR2(50),
usertype VARCHAR2(10),
empno NUMBER(6)  UNIQUE,
 CONSTRAINT userid_primary PRIMARY KEY (userid) ,
 CONSTRAINT username_unique UNIQUE (username) 
);

ALTER TABLE User_Master
  ADD CONSTRAINT user_masterfk FOREIGN KEY (empno) REFERENCES Employee(empno); 

CREATE TABLE Employee(
empno NUMBER(6) ,
ename VARCHAR2(50),
job VARCHAR2(50),
mgr NUMBER(6),
hiredate DATE,
dept_id NUMBER(10) ,
 CONSTRAINT empno_primary PRIMARY KEY (empno)
);
ALTER TABLE Employee
  ADD CONSTRAINT employee_fk FOREIGN KEY (dept_id) REFERENCES Department(dept_id); 


drop table employee cascade constraints;

/*
insert into user_map_employee values('Chintan',104);
insert into  user_map_employee values('Akshay',105);

insert into  user_map_employee values('c',118);
insert into  user_map_employee values('b',119);
*/

select * from User_Master;

INSERT INTO User_Master values ('1001','Chintan','cmistr','Manager',104);
INSERT INTO User_Master values ('1002','Rohit','rosawan','Admin',0);
INSERT INTO User_Master values ('1003','Akshay','asatam','Manager',105);
INSERT INTO User_Master values ('1004','a','a','Admin',1);
INSERT INTO User_Master values ('1005','b','b','Manager',119);
INSERT INTO User_Master values ('1006','c','c','Manager',118);




drop table Employee cascade constraints;

drop table User_Master cascade constraints;


truncate table employee;

INSERT INTO Employee values (0,'Rohit','Admin',150,'20-JAN-2017',9);
INSERT INTO Employee values (1,'a','Admin',150,'20-JAN-2017',9);

INSERT INTO Employee values (101,'Uma','Analyst',104,'20-JAN-2017',1);
INSERT INTO Employee values (102,'Sadaf','Analyst',103,'15-FEB-2017',2);
INSERT INTO Employee values (103,'Shikha','Analyst',101,'26-FEB-2017',3);
INSERT INTO Employee values (104,'Chintan','Manager01',107,'26-FEB-2017',3);
INSERT INTO Employee values (105,'Akshay','Manager02',107,'26-FEB-2017',3);
INSERT INTO Employee values (106,'Kasbe','Trainee',105,'20-FEB-2017',3);
INSERT INTO Employee values (110,'Raunak','Trainee',105,'20-FEB-2017',3);
INSERT INTO Employee values (108,'Parth','Trainee',104,'26-FEB-2016',1);
INSERT INTO Employee values (109,'Neeraj','Trainee',104,'26-FEB-2016',1);

INSERT INTO Employee values (118,'c','Manager01',150,'26-FEB-2016',1);
INSERT INTO Employee values (119,'b','Manager01',150,'26-FEB-2016',1);
INSERT INTO Employee values (120,'Tia','Trainee',118,'26-FEB-2016',1);
INSERT INTO Employee values (121,'Sia','Trainee',119,'26-FEB-2016',1);
INSERT INTO Employee values (122,'Anne','Trainee',119,'26-FEB-2016',1);
INSERT INTO Employee values (123,'Mia','Trainee',118,'26-FEB-2016',1);
INSERT INTO Employee values (124,'Biyanka','Trainee',119,'26-FEB-2016',1);


select * from employee;

/*
drop table user_map_employee;
drop table User_Master;
drop table employee;

create table user_map_employee(
username varchar2(15) ,
empno number(6)
);



truncate table user_map_employee;

insert into user_map_employee values('Chintan',104);
insert into  user_map_employee values('Akshay',105);

insert into  user_map_employee values('c',118);
insert into  user_map_employee values('b',119);

*/


CREATE TABLE Asset
(
assetid NUMBER ,
assetname VARCHAR2(25),
assetdes VARCHAR2(25),
quantity NUMBER,
status VARCHAR2(15),
CONSTRAINT assetid_unique UNIQUE (assetid)
);

DROP TABLE ASSET;

select r.requestid,r.empno,r.mgrId,r.assetid,r.requestdate,r.requestfordays,r.status,a.quantity from request r,asset a where r.status = 'Pending' and a.assetid = r.assetid

drop sequence asset_id_seq;

drop sequence request_id_seq;

drop sequence asset_allocation_id_seq;


create sequence asset_allocation_id_seq
START WITH 0001
INCREMENT BY 1;


drop sequence asset_id_seq;

CREATE SEQUENCE asset_id_seq
START WITH 1010
INCREMENT BY 1;

CREATE SEQUENCE request_id_seq 
start with 1
increment by 1;


SELECT asset_id_seq.NEXTVAL FROM Asset;

INSERT INTO User_Master values ('1001','Chintan','cmistr','Manager');
INSERT INTO User_Master values ('1002','Rohit','rosawan','Admin');
INSERT INTO User_Master values ('1003','Akshay','asatam','Manager');
INSERT INTO User_Master values ('1004','a','a','Admin');
INSERT INTO User_Master values ('1005','b','b','Manager');
INSERT INTO User_Master values ('1006','c','c','Manager');


drop table request cascade constraints;

CREATE TABLE REQUEST(
requestid number ,
empno number(6),                    
assetid number,
requestdate date,
requestfordays number,
status varchar2(10),
CONSTRAINT requestid_primary PRIMARY KEY (requestid)

);

insert into request values(1,121,1001,sysdate,10,'Pending');
insert into request values(1,121,1001,sysdate,10,'Pending');

drop table asset_Allocation cascade constraints;

CREATE TABLE Asset_Allocation
(
allocationid NUMBER ,
assetid NUMBER ,
empno NUMBER(6) references employee(empno),
allocation_date DATE,
release_date DATE,
CONSTRAINT allocationid_primary PRIMARY KEY (allocationid)
);
ALTER TABLE Asset_Allocation
  ADD CONSTRAINT assetallocation_fk FOREIGN KEY (assetid) REFERENCES asset(assetid); 


select * from asset_allocation;


select asset_allocation_id_seq.nextval from dual;

TRUNCATE TABLE ASSET;

select sysdate,sysdate + 10  from dual;

desc table asset;


SELECT request_id_seq.nextval FROM DUAL;