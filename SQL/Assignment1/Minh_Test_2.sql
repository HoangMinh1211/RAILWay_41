Create database Testing_System_Asignment_2;
use Testing_System_Asignment_2;

Create table Department(
DepartmentId tinyint primary key auto_increment, 
DepartmentName enum('Sale', 'Marketting', 'CEO', 'Accountant', 'HR')
);

Create table `Position`(
PositionId tinyint primary key auto_increment,
PositionName enum('Dev', 'Test', 'PM', 'QA', 'QC')
);

Create table `Account`(
AccountId int primary key auto_increment,
Email Varchar(100) unique key ,
Username Varchar(50) unique key not null,
Fullname Varchar(50) not null,
DepartmentId tinyint,
PositionId tinyint,
Create_date datetime default now(),
age int,
foreign key(DepartmentId) references Department(DepartmentId),
foreign key(PositionId) references `Position`(PositionId),
check (age >= 18)
); 

create table `Group`(
GroupId tinyint primary key auto_increment,
GroupName varchar(50),
AccountId tinyint,
JoinDate date
); 

create table GroupAccount(
GroupId tinyint,
foreign key (GroupId) references `Group`(GroupId),
AccountId int,
foreign key (AccountId) references `Account`(AccountId),
JoinDate date
);

create table TypeQuestion(
TypeId tinyint primary key auto_increment,
TypeName enum('Esay', 'Mutilple-choices')
);

create table CategoryQuestion(
CategoryId tinyint primary key auto_increment,
CategoryName varchar(50)
);

create table Question(
QuestionId tinyint primary key auto_increment,
Content varchar(200),
CategoryId tinyint,
foreign key (CategoryId) references CategoryQuestion(CategoryId),
TypeId tinyint,
foreign key (TypeId) references TypeQuestion(TypeId),
CreatorId tinyint,
CreateDate date
);

create table Answer(
AnswerId tinyint,
Content varchar(500),
QuestionId tinyint,
foreign key (QuestionId) references Question(QuestionId),
IsCorrect enum('True', 'False')
);

create table Exam(
ExamId tinyint primary key auto_increment,
CodeDeThi tinyint,
Title varchar(200),
CategoryId tinyint,
Duration time,
CreateId tinyint,
CreateDate date 
);

create table ExamQuestion(
ExamId tinyint,
foreign key (ExamId) references Exam(ExamId),
QuestionId tinyint
);

