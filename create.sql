create database quanlyhocvien;
use quanlyhocvien;
create table class (
id int unique not null primary key auto_increment,
name varchar(30),
language varchar(30),
description varchar(30)
);
create table address (
id int unique not null primary key auto_increment,
address varchar(30)
);
create table student (
id int unique not null primary key auto_increment,
fullname varchar(30),
address_id int not null,
foreign key (address_id) references address(id),
age int,
phone varchar(15) unique,
class_id int not null,
foreign key (class_id) references class(id)
);
create table course (
id int unique not null primary key auto_increment,
name varchar(20),
description varchar(30)
);
create table point (
id int unique not null primary key auto_increment,
course_id int not null,
foreign key (course_id) references course(id),
student_id int not null,
foreign key (student_id) references student(id),
point int 
);
insert into address (address) values ("hanoi");
insert into address (address) values ("bacninh");
insert into address (address) values ("haiduong");
insert into address (address) values ("vinhphuc");
insert into address (address) values ("hoabinh");
insert into class (name,language,description) values ("c01","java","ngon ngu backend");
insert into class (name,language,description) values ("c02","nodejs","ngon ngu backend");
insert into class (name,language,description) values ("c03","html/css","ngon ngu web");
insert into class (name,language,description) values ("c04","python","ngon ngu script");
insert into class (name,language,description) values ("c05","c","ngon ngu nhung");
insert into class (name,language,description) values ("c06","c","ngon ngu nhung");
alter table class
add unique(name,language);
insert into course (name,description) values ("A1","abc xyz");
insert into course (name,description) values ("A2","abc xyz");
insert into course (name,description) values ("A3","abc xyz");
insert into course (name,description) values ("A4","abc xyz");
insert into course (name,description) values ("A5","abc xyz");
insert into student (fullname,address_id,age,phone,class_id) values 
("Nguyen Van A", 1, 18, "0987654321",1);
insert into student (fullname,address_id,age,phone,class_id) values 
("Nguyen Van B", 1, 18, "0987654322",2);
insert into student (fullname,address_id,age,phone,class_id) values 
("Nguyen Van C", 2, 19, "0987654323",3);
insert into student (fullname,address_id,age,phone,class_id) values 
("Nguyen Van D", 6, 20, "0987654333",4);
insert into student (fullname,address_id,age,phone,class_id) values 
("Nguyen Van E", 1, 21, "0987654324",5);
insert into student (fullname,address_id,age,phone,class_id) values 
("Nguyen Van F", 4, 25, "0987654325",2);
insert into student (fullname,address_id,age,phone,class_id) values 
("Nguyen Van G", 1, 30, "0987654326",1);
insert into student (fullname,address_id,age,phone,class_id) values 
("Nguyen Van H", 2, 35, "0987654327",3);
insert into student (fullname,address_id,age,phone,class_id) values 
("Nguyen Van I", 5, 19, "0987654328",4);
insert into student (fullname,address_id,age,phone,class_id) values 
("Nguyen Van K", 1, 29, "0987654329",5);
insert into point (course_id,student_id,point) values (1,1,5);
insert into point (course_id,student_id,point) values (2,1,5);
insert into point (course_id,student_id,point) values (3,1,5);
insert into point (course_id,student_id,point) values (4,1,5);
insert into point (course_id,student_id,point) values (5,1,5);
insert into point (course_id,student_id,point) values (1,3,5);
insert into point (course_id,student_id,point) values (3,3,5);
insert into point (course_id,student_id,point) values (2,8,5);
insert into point (course_id,student_id,point) values (4,3,5);
insert into point (course_id,student_id,point) values (1,4,5);
insert into point (course_id,student_id,point) values (3,9,5);
insert into point (course_id,student_id,point) values (2,8,5);
insert into point (course_id,student_id,point) values (4,7,5);