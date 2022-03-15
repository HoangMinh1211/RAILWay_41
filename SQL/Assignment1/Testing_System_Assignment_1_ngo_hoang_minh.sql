Create database Testing_System_Asignment_1;
use Testing_System_Asignment_1;

Create table Department(
department_id int, 
department_name varchar(50)
);

Create table Position1(
position_id int,
position_name varchar(50)
);



Create table Account(
account_id int,
email Varchar(100),
username Varchar(50),
fullname Varchar(50),
department_id int,
position_id int,
create_date date
); 

create table Group1(
group_id int,
Account_id int,
join_date date 
);

create table GroupAccount(
group_id int,
account_id int,
join_date date 
);

create table TypeQuestion(
type_id int,
type_name varchar(150)
);

create table CategoryQuestion(
category_id int,
category_name varchar(100)
);

create table Question(
question_id int,
content varchar(200),
category_id int,
type_id int,
creator_id int,
create_date date
);

create table Answer(
answer_id int,
content varchar(500),
question_id int,
is_correct varchar(10)
);

create table Exam(
exam_id int,
code_de_thi int,
title varchar(200),
category_id int,
duration time,
create_id int,
create_date date 
);

create table ExamQuestion(
exam_id int,
question_id int
);