use ReviewDB;
drop table Reviews;
drop database ReviewDB;

create database ReviewDB;
use ReviewDB;

create table Reviews
(
course varchar(9),
communication integer,
contentcomm integer,
oldisscussions integer,
learnedcontent integer,
feedbackquality integer,
availability integer,
activityreqs integer,
understandpolicies tinyint,
coursestrengths varchar(250),
courseimprovements varchar(250)
);

load data local infile '/Users/adam/Downloads/reviews.csv' into table Reviews 
 FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  ignore 1 lines;

select * from Reviews
where communication <= 2;

select * from Reviews
where feedbackquality = 1 | 2;

select * from Reviews where communication = 2;

select * from Reviews where feedbackquality in (1,2);

select course from Reviews where course = 'cop3847' and oldisscussions in (4, 5);

select course from Reviews where activityreqs is NULL;

select course from Reviews where coursestrengths like '%good%';

