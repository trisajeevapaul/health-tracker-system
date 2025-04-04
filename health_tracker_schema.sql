-- create database health_tracker_system;
use health_tracker_system;

-- creating table users
create table users
(User_id int primary key not null,
Name varchar(45) not null,
Age int not null,
Mail_ID varchar(45) not null,
Password varchar(45) not null);

-- inseting the datas for the column in a table
insert into health_tracker_system.users(User_id,Name,Age,Mail_ID,Password) values
(1,"Alice_Johnson",43,'user1@example.com','874m5NgS'),
(2,"Bob_Smith"	,34	,"user2@example.com","TUAVvc24"),
(3,"Charlie_Davis",33,"user3@example.com","Xyo2ZJWC"),
(4,"Diana_Miller",26,"user4@example.com","mf098Bbu"),
(5,"Edward_Wilson",54,"user5@example.com","FXSIvKkl"),
(6,"Fiona_Brown",43,"user6@example.com","8Y74fx2C"),
(7,"George_White",41,"user7@example.com","lpTOXhx4"),
(8,	"Hannah_Lewis",	43,	"user8@example.com","FyLejMjk"),
(9	,"Ian_Clark",33	,"user9@example.com","yNs5UBv7"	),
(10	,"Jessica_Adams",48	,"user10@example.com","slpo6X2q"),
(11	,"Kevin_Scott",	56,"user11@example.com","wZlz2bgA"),
(12,"Laura_Hall",48,"user12@example.com","FyUTOzlM"),
(13,"Michael_Young"	,34,"user13@example.com","9zZLlTLt"),
(14,"Nancy_King",39,"user14@example.com","rwuuOiXy"	),
(15,"Oscar_Martinez",22,"user15@example.com","GF4ocf6r"	),
(16	,"Paul_Robinson",57,"user16@example.com","okE7KucN"	),
(17,"Quinn_Carter",42,"user17@example.com","j4rZ8mYS"),
(18,"Rachel_Green",29,"user18@example.com","Y5X6kyZr"),
(19	,"Samuel_Turner",18	,"user19@example.com","GibYEIED"),
(20	,"Tina_Phillips",50	,"user20@example.com","64HIn5ng"),
(21,"Umar_Nelson",59,"user21@example.com","PZl2BnmK"),
(22,"Victor_Edwards",24,"user22@example.com","EBaKRGCY"),
(23,"Wendy_Baker",53,"user23@example.com","ovSYaKv9"),
(24,"Xavier_Gomez",51,"user24@example.com","s41G4TNs"),
(25,"Yvonne_Hughes"	,46,"user25@example.com","KXYFUbsF"),
(26,"Zachary_Collins",44,"user26@example.com","HS51vc6B"),
(27	,"Amy_Stewart",31,"user27@example.com","6SGsGLZV"),
(28	,"Brian_Foster",41,"user28@example.com"	,"Hqsu0jFy"	),
(29	,"Catherine_Jenkins",44,"user29@example.com","sKCEbEoG"	),
(30,"David_Russell"	,37,"user30@example.com","hU9dQor4");

-- creating the table mood_score
create table health_tracker_system.mood_score
(id int unique ,
score float primary key,
level varchar(45) not null);

insert into health_tracker_system.mood_score(id,score,level) values
(	1	,	1	,	"Typical_😊"	)	,
(	2	,	2	,	"Standard_🙂"	)	,
(	3	,	3	,	"Moderate_😌"	)	,
(	4	,	4	,	"Normal_😃"	)	,
(	5	,	5	,	"Balanced _😊"	)	,
(	6	,	6	,	"Middle_😐"	)	,
(	7	,	7	,	"Minimal _🙂"	)	,
(	8	,	8	,	"Small_🧐"	)	,
(	9	,	9	,	"Poor_😞"	)	,
(	10	,	10	,	"Weak_😓"	)	;

-- select * from mood_score;	

-- creating the table  mood_logs
-- drop table user_mood_logs;
create table user_mood_logs(id int primary key,
user_id int,
user_score float not null,
Additional_Comments varchar(100) null,
Log_date date not null,
work_out_date date null,
constraint user_score_fk foreign key (user_score)
references mood_score(score) on delete cascade,
constraint user_fk foreign key(user_id) references users(user_id) on delete cascade
);

use health_tracker_system;

insert into user_mood_logs(id,user_id,user_score,additional_comments,log_date,work_out_date) values
(	1	,1,	4	,	"Enjoyed_a_delicious_meal"	,	"2024-12-29","2024-12-29"	)	,
(	2	,2,	6	,	"Feeling_inspired_after_a_good_talk"	,	"2024-08-02","2024-08-02"	)	,
(	3	,3,	8	,	"Excited_about_a_new_hobby"	,	"2025-03-23","2025-03-23"	)	,
(	4	,4,	6	,	"Stressed_about_exams"	,	"2025-01-13","2025-01-13"	)	,
(	5	,5,	9	,	"Had_a_great_workout_today"	,	"2024-08-14",null	)	,
(	6	,6,	1	,	"Had_a_creative_breakthrough"	,	"2024-10-01",null	)	,
(	7	,7,	9	,	"Nervous_about_tomorrow’s_meeting"	,	"2024-07-18",null	)	,
(	8	,8,	1	,	"Feeling_under_the_weather"	,	"2024-06-06","2024-06-06"	)	,
(	9	,9,	1	,	"Feeling_at_peace_after_meditation"	,	"2025-03-13","2025-03-13"	)	,
(	10	,10,7	,	"Worried_about_an_upcoming_deadline"	,	"2025-01-11","2025-01-11"	)	,
(	11	,11,	3	,	"Excited_for_the_weekend"	,	"2024-06-03",null	)	,
(	12	,12,	5	,	"Struggling_with_focus_today"	,"2025-03-27","2025-03-27")	,
(	13	,13,	7	,	"Feeling_proud_of_my_progress"	,"2024-02-12",null	)	,
(	14	,14,8	,	"I'm_happy_I_spent_time_with_my_parents"	,"02024-02-03","02024-02-03"	)	,
(	15	,15,	1	,	"Sad_about_an_argument_with_a_friend"	,	"2024-10-15","2024-10-15"	)	,
(	16	,16,10	,	"Feeling_homesick"	,	"2024-06-03",null	)	,
(	17	,17,9	,	"Spent_quality_time_with_friends"	,"2024-06-19","2024-06-19")	,
(	18	,18,10	,	"Had_a_fun_outing_today"	,	"2024-05-30",null)	,
(	19	,19,1	,	"Feeling_tired_but_accomplished"	,	"2024-08-01","2024-08-01"	)	,
(	20	,20,2	,	"Feeling_anxious_about_work"	,"2024-07-16","2024-07-16")	,
(	21	,21,	2	,	"Feeling_refreshed_after_a_nap"	,"2024-05-09",null)	,
(	22	,22,7	,	"Feeling_overwhelmed_with_tasks"	,"2025-01-23","2025-01-23"	)	,
(	23	,23,9	,	"Feeling_a_bit_lonely"	,"2024-12-12",null)	,
(	24	,24,3	,	"Had_a_productive_day_at_work"	,"2024-03-24","2024-03-24")	,
(	25	,25,2	,	"Happy_to_finish_an_important_project"	,"2024-12-27","2024-12-27")	,
(	26	,26,3	,	"Had_a_tough_day,_but_staying_positive"	,	"2025-01-18",null	)	,
(	27	,27,2	,	"My_leg_is_paining"	,	"2024-01-05","2024-01-05"	)	,
(	28	,28,5	,	"Had_a_relaxing_day"	,	"2024-06-30",null	)	,
(	29	,29,4	,	"Feeling_grateful_for_myfamily"	,"2024-08-23",null),
(	30	,30,8	,	"Feeling_motivated_after_reading _a_book"	,	"2025-01-20","2025-01-20"	);

-- select * from user_mood_logs;

-- alter table user_mood_logs add column workout_date date;

-- create a table activity
-- drop table activity;
create table activity(
id int primary key,
user_id int,
constraint activity_user_fk foreign key activity(user_id) references users(user_id)on delete cascade,
mood_score float,
constraint activity_mood_score_fk foreign key activity(mood_score) references mood_score(score) on delete cascade,
activity_type varchar(100));

insert into activity(id,user_id,mood_score,activity_type)values
(	1,1,	1	,	"hold_something_soft_like_pilllow"	)	,
(	2,2,	2	,	"streching"	)	,
(	3,3,	3	,	"Listen_music"	)	,
(	4,4,	4	,	"see_five_things,touch_two_things "	)	,
(	5,5,	5	,	"short_walk"	)	,
(	6,6,6	,	"weight_lift"	)	,
(	7,7,	7	,	"walking"	)	,
(	8,8,	8	,	"cycling"	)	,
(	9,9,	9	,	"cardio"	)	,
(	10,10,	10	,	"jogging"	)	;

-- ALTER TABLE activity DROP COLUMN user_id;

-- select * from user_mood_logs;

-- creating a table for heart rate tracking
CREATE TABLE Heartrate_Tracker (
    EntryID INT AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    user_Score float ,
    BloodPressure VARCHAR(10),
    HeartRate INT,
	constraint  score_fk foreign key (user_score) references mood_score(score)
    on delete cascade,
    constraint  userid_fk foreign key (user_id) references users(user_id)
    on delete cascade
);

INSERT INTO Heartrate_Tracker (user_id, user_Score, BloodPressure, HeartRate) VALUES 
(1, 10, '120/80', 72),
(2, 8, '118/78', 75),
(3, 6, '125/85', 80),
(4, 4, '130/90', 85),
(5, 2, '110/70', 65),
(6, 10, '122/82', 74),
(7, 8, '119/79', 76),
(8, 6, '126/86', 81),
(9, 4, '132/92', 87),
(10, 2, '111/72', 67),
(11, 6, '124/84', 78),
(12, 4, '135/95', 88),
(13, 2, '115/76', 70),
(14, 10, '120/80', 72),
(15, 8, '117/77', 73),
(16, 6, '123/83', 77),
(17, 4, '138/98', 90),
(18, 2, '109/68', 64),
(19, 10, '121/81', 75),
(20, 8, '118/79', 74),
(21, 4, '140/100', 95),
(22, 2, '112/73', 68),
(23, 10, '119/78', 74),
(24, 8, '128/88', 82),
(25, 6, '127/87', 79),
(26, 4, '134/94', 89),
(27, 2, '108/67', 63),
(28, 10, '123/83', 76),
(29, 8, '129/89', 84),
(30, 6, '125/85', 78);


-- stored procedure
-- inactive users who doesnt workout
USE health_tracker_system;
DELIMITER //

-- DROP procedure GetInactiveUsers;
CREATE PROCEDURE GetInactiveUsers()
BEGIN
    SELECT u.user_id, u.name,u.Mail_ID
    FROM users u
    LEFT JOIN user_mood_logs um
    ON u.user_id = um.user_id
    WHERE um.work_out_date is null;-- um.work_out_date< p_cutoff_date;
END //

DELIMITER ;

CALL GetInactiveUsers();

// stored procedure
-- added a new rows to the table mood score
DELIMITER //

CREATE PROCEDURE Add_mood_score(score float)
BEGIN
    INSERT INTO mood_score(id,score,level)
    VALUES 
    
    (11,11,"Optimistic"),
    (12,12,"Motivated"),
    (13,13,"Happy"),
    (14,2.5,"Severely_Depressed"),
    (15,3.5,"hopeless"),
    (16,4.5,"Deeply_sad");

END //

DELIMITER ;
select * from mood_score;
call Add_mood_score(2.5);

// stored procedure
-- user_details of name mail id,score and last work out date and activity type
delimiter //
create procedure user_details(USer_id int)
begin
select u.User_id,u.name,u.mail_Id,um.user_score,um.work_out_date,activity_type
from users u
left join user_mood_logs um
on u.user_id=um.user_id
left join activity a
on um.user_score=a.mood_score
ORDER BY user_id;
end //
delimiter ;

call user_details(4);

-- stored procedure

-- to find the stress level (case expression)
delimiter //
create procedure stress_level(in user_score float)
begin
select user_score,
case

when user_score between 6 and 10  then "stress level low"
when user_score between 4 and 5  then "stress level is medium"
when user_score between 1 and 3 then "stress level is low"
else "invalid"
end as measures
from user_mood_logs;
end //

select * from mood_score;
delimiter ;
call stress_level(4);

-- to pick the users of same mood score
delimiter //
create procedure users_with_same_mood(in user_score float)
begin
select user_mood_logs.user_score,users.name,
count(*) over(partition by user_score) as numbers
from users
join user_mood_logs
on users.user_id=user_mood_logs.user_id
where user_mood_logs.user_score=user_score;
end //
delimiter ;

call users_with_same_mood(2);

-- stored procedure
-- to find the heart rate of particular user
delimiter //
create procedure users_heart_rate(in HeartRate int)
begin
select users.name,heartrate_tracker.BloodPressure,heartrate_tracker.HeartRate,heartrate_tracker.user_Score
from users
join heartrate_tracker
on users.user_id=heartrate_tracker.user_id
where heartrate_tracker.HeartRate=HeartRate;
end //
delimiter ;

call users_heart_rate(85);
