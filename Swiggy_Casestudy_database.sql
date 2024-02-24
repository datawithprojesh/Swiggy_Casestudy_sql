/*Create Database Project_8*/
CREATE DATABASE PROJECT_8;

/*Set as Default schema*/
use project_8;

/*Create Pre Diwali Table*/
create table pre_diwali
(DT varchar (100),
ID int,
City int,
NAME varchar (100),
ITEM_ID int,
ITEM_NAME char (100),
Hour_of_the_day int,
ORDERS int,
QTY int,
ITEM_GMV int,
CATEGORY varchar (100));

/*Check the Record from pre_diwali Table*/
select *
from pre_diwali;

/*Change the Date Format in pre_diwali table*/
Alter table pre_diwali add column NewDate datetime; 
Update	pre_diwali
Set NewDate = Str_to_date(substr(DT,1,10),'%d-%m-%Y'); 

/*Create Post Diwali Table*/
create table post_diwali
(DT varchar (100),
ID int,
City int,
NAME varchar (100),
ITEM_ID int,
ITEM_NAME char (100),
Hour_of_the_day int,
ORDERS int,
QTY int,
ITEM_GMV int,
CATEGORY varchar (100));

/*Check the Record from post_diwali Table*/
select *
from post_diwali;

/*Change the Date Format in post_diwali table*/
Alter table post_diwali add column NewDate datetime; 
Update	post_diwali
Set NewDate = Str_to_date(substr(DT,1,10),'%d-%m-%Y'); 