create database newdb;
use newdb;

create table tb2(
roll_No int primary key,
fullname varchar(50) not null,
branch varchar(5) default 'AIDS',
marks tinyint,
grade char(1),
fees float,
constraint chk_marks check(marks>=0 and marks<=100)
);
desc tb2;




alter table tb2 rename column fees to fezz;
alter table tb2 add addr varchar(100);
alter table tb2
modify addr varchar(100) unique;

alter table tb2 change column fezz fees float;
alter table tb2 
add column result char(4);

alter table tb2 drop column result;

insert into tb2 value (101,"Riddhi Shedame","CSE",80,"A",12.05,"asdfghjkl");
INSERT INTO tb2 values
(102, 'Aarav Sharma', 'AIDS', 85, 'A', 45000.00, 'Mumbai'),
(103, 'Riya Patil', 'AIDS', 92, 'A', 45000.00, 'Pune'),
(104, 'Aditya Joshi', 'AIDS', 78, 'B', 45000.00, 'Nashik'),
(105, 'Sneha Kulkarni', 'AIDS', 88, 'A', 45000.00, 'Nagpur'),
(106, 'Rahul Deshmukh', 'AIDS', 67, 'C', 45000.00, 'Thane');

INSERT INTO tb2 (roll_No, fullname, marks, grade, fees, addr)
VALUES
(107, 'Palkhi Sharma', 75, 'B', 48.70, 'Nanded'),
(108, 'Poorvi Patil',  77, 'B', 45.80, 'Pardi');

INSERT INTO tb2 (roll_No, fullname,branch, marks, grade, fees)
VALUES
(109, 'Palkhi Apte','IT', 50, 'D', 48.78),
(110, 'Poorvi Jha', 'CV', 60, 'C', 45.88);

update tb2
set branch ="CSD"
where roll_No in (102,104,106);

update tb2
set branch ="AIML" , fees = 23.67
where roll_No in (107,108);

update tb2
set addr = "YCCE"
where addr is null;

select * from tb2;

select roll_No ,fullname, branch,grade from tb2 where marks>=80 order by marks desc;
#for top 3
select roll_No ,fullname, branch,grade from tb2 where marks>=80 order by marks desc limit 3;
insert into tb2 values
(111, 'Arnav Sharma',       'AIDSA', 87, 'A',  6500.18, 'Jaripatka, Nagpur'),
(112, 'Ananya Patil',       'AIDSA', 92, 'A',  7200.50, 'Manish Nagar, Nagpur'),
(113, 'Rohan Deshmukh',     'AIML',  78, 'B',  6500.18, 'Besa, Nagpur'),
(114, 'Sneha Kulkarni',     'AIDSA', 85, 'A',  6800.00, 'Dharampeth, Nagpur'),
(115, 'Aditya Joshi',       'DSC',   74, 'B',  6500.18, 'Trimurti Nagar, Nagpur'),
(116, 'Priya Nair',         'AIDSA', 96, 'A',  7500.75, 'Sadar, Nagpur'),
(117, 'Rahul Shinde',       'DSC',   68, 'C',  6500.18, 'Wadi, Nagpur'),
(118, 'Kavya Verma',        'AIML',  89, 'A',  6900.25, 'Mihan, Nagpur'),
(119, 'Vivek Tiwari',       'AIDSA', 81, 'A',  6500.18, 'Manewada, Nagpur'),
(120, 'Isha Gupta',         'DSC',   76, 'B',  7100.00, 'Hudkeshwar, Nagpur'),

(121, 'Siddharth Rao',      'AIML',  91, 'A',  6500.18, 'Wardhaman Nagar, Nagpur'),
(122, 'Neha Pawar',         'AIDSA', 83, 'A',  6800.50, 'Nandanvan, Nagpur'),
(123, 'Kunal Yadav',        'DSC',   59, 'C',  6500.18, 'Mahal, Nagpur'),
(124, 'Pooja Choudhary',    'AIML',  88, 'A',  7300.00, 'Civil Lines, Nagpur'),
(125, 'Akash More',         'AIDSA', 72, 'B',  6500.18, 'Pardi, Nagpur'),
(126, 'Megha Borkar',       'DSC',   94, 'A',  7600.00, 'Khamla, Nagpur'),
(127, 'Yash Thakur',        'AIML',  65, 'C',  6500.18, 'Rameshwari, Nagpur'),
(128, 'Simran Kaur',        'AIDSA', 79, 'B',  6900.75, 'Lakadganj, Nagpur'),
(129, 'Omkar Wankhede',     'DSC',   86, 'A',  6500.18, 'Kamptee Road, Nagpur'),
(130, 'Tanvi Mishra',       'AIML',  90, 'A',  7100.50, 'Koradi Road, Nagpur'),

(131, 'Harsh Vaidya',       'AIDSA', 77, 'B',  6500.18, 'Gorewada, Nagpur'),
(132, 'Riya Sahu',          'DSC',   93, 'A',  7400.00, 'Panchpaoli, Nagpur'),
(133, 'Manav Agrawal',      'AIML',  71, 'B',  6500.18, 'Ayodhya Nagar, Nagpur'),
(134, 'Sakshi Bhoyar',      'AIDSA', 84, 'A',  6800.25, 'Dighori, Nagpur'),
(135, 'Nikhil Bansode',     'DSC',   62, 'C',  6500.18, 'Mankapur, Nagpur'),
(136, 'Aditi Gawande',      'AIML',  95, 'A',  7700.00, 'Friends Colony, Nagpur'),
(137, 'Dev Malviya',        'AIDSA', 80, 'B',  6500.18, 'Shankar Nagar, Nagpur'),
(138, 'Shreya Dube',        'DSC',   87, 'A',  7000.00, 'Pratap Nagar, Nagpur'),
(139, 'Mohit Kapse',        'AIML',  69, 'C',  6500.18, 'Omkar Nagar, Nagpur'),
(140, 'Anushka Raut',       'AIDSA', 91, 'A',  7200.00, 'Bardi, Nagpur'),

(141, 'Ayush Chavan',       'DSC',   75, 'B',  6500.18, 'Kharbi, Nagpur'),
(142, 'Muskan Khan',        'AIML',  89, 'A',  6800.00, 'Jafar Nagar, Nagpur'),
(143, 'Tejas Zade',         'AIDSA', 64, 'C',  6500.18, 'Bharat Nagar, Nagpur'),
(144, 'Nandini Raut',       'DSC',   98, 'A',  7900.00, 'Laxmi Nagar, Nagpur'),
(145, 'Parth Soni',         'AIML',  82, 'A',  6500.18, 'Shastri Nagar, Nagpur'),
(146, 'Diya Mahajan',       'AIDSA', 73, 'B',  6900.00, 'Ramdaspeth, Nagpur'),
(147, 'Arjun Kale',         'DSC',   88, 'A',  6500.18, 'Somalwada, Nagpur'),
(148, 'Mansi Patil',        'AIML',  79, 'B',  7100.00, 'Telankhedi, Nagpur'),
(149, 'Saurabh Bhat',       'AIDSA', 67, 'C',  6500.18, 'Itwari, Nagpur'),
(150, 'Komal Wagh',         'DSC',   92, 'A',  7500.00, 'Gandhibagh, Nagpur'),

(151, 'Varun Jadhav',       'AIML',  85, 'A',  6500.18, 'Nehru Nagar, Nagpur'),
(152, 'Ritika Singh',       'AIDSA', 78, 'B',  6800.00, 'Chhatrapati Nagar, Nagpur'),
(153, 'Akshay Bhagat',      'DSC',   90, 'A',  6500.18, 'Somalwada Extension, Nagpur'),
(154, 'Pallavi Wankhede',   'AIML',  61, 'C',  7200.00, 'Jaitala, Nagpur'),
(155, 'Vishal Dandekar',    'AIDSA', 83, 'A',  6500.18, 'Dattawadi, Nagpur'),
(156, 'Rashmi Korde',       'DSC',   97, 'A',  7600.00, 'Seminary Hills, Nagpur'),
(157, 'Chirag Sahu',        'AIML',  70, 'B',  6500.18, 'Beltarodi, Nagpur'),
(158, 'Sana Sheikh',        'AIDSA', 86, 'A',  6900.00, NULL),
(159, 'Abhishek Pande',     'DSC',   NULL, NULL, 6500.18, 'Medical Square, Nagpur'),
(160, 'Ishita Joshi',       'AIML',  NULL, NULL, NULL, NULL);

update tb2 
set marks = null
where roll_No in (111,112,128,124,156,157,134,126,133,160);


update tb2
set marks = (select avg(marks) from tb2)
where marks is null;

select * from tb2;


set sql_safe_updates = 0;
#marks null = avg

UPDATE tb2
SET marks = (
    SELECT avg_marks
    FROM (SELECT AVG(marks) AS avg_marks FROM tb2) AS a
)
WHERE marks IS NULL;

#min fees where fees = null

update tb2
set fees= (select minfees from (select min(fees) as minfees from tb2)as m)
where fees is null;

#without subquery
# @ for userdefined variables
set @f = (select min(fees) as minfiz from tb2);
update tb2
set fees = @f
where fees = 6500.18;

#max grade

UPDATE tb2
SET grade = (
    SELECT maxgrd
    FROM (SELECT max(marks) AS maxgrd FROM tb2) AS m
)
WHERE marks IS NULL;


#if branch = null then add new_branch
update tb2 
set branch = "ME"
where branch is null;

#either addr =null or branch=null then branch =ME and addr =ycce
UPDATE tb2
SET branch = 'IOT',
    addr = 'AFJLBU'
WHERE addr IS NULL OR branch IS NULL;

#to drop unique feature
ALTER TABLE tb2
DROP INDEX addr;

# INDEXES:
show indexes from tb2;

create index indx_addr
on tb2(addr);

drop index indx_addr
on tb2;
# # # # # # # # #

# wildcards:
# % Any no. of characters
# _ Exactly one characters

select * from tb2 where fullname like("V%");

/*
COUNT(*) -> NO OF ROWS?
COUNT(column) -> How many values?
COUNT(DISTINCT column) -> How many unique values?
*/

select count(*) from tb2;
select count(grade) from tb2;

select grade , count(grade) as grdtype 
from tb2
group by grade;

select grade ,count(grade) as grdtype 
from tb2
group by grade
having max(fees)>14500;

# NEW TABLE

CREATE TABLE projects (
    proj_id INT,
    stud_id INT,
    proj_mark TINYINT,
    proj_subject VARCHAR(100),
    guide VARCHAR(50),
    cost FLOAT,
    completion_date DATE,

    PRIMARY KEY (proj_id, stud_id),

    FOREIGN KEY (stud_id)
        REFERENCES tb2 (roll_No),

    CHECK (proj_mark BETWEEN 0 AND 100),
    CHECK (cost >= 0)
);

INSERT INTO projects
(proj_id, stud_id, proj_mark, proj_subject, guide, cost, completion_date)
VALUES

(201, 101, 88, 'Smart Electricity Consumption Monitor', 'Dr. Mehta', 18500.00, '2026-02-10'),
(201, 102, 84, 'Smart Electricity Consumption Monitor', 'Dr. Mehta', 18500.00, '2026-02-10'),
(202, 103, 92, 'Machine Learning Power Demand Prediction', 'Prof. Kulkarni', 22000.00, '2026-02-18'),
(202, 105, 79, 'Machine Learning Power Demand Prediction', 'Prof. Kulkarni', 22000.00, '2026-02-18'),
(203, 104, 86, 'AI Based Energy Usage Forecasting', 'Dr. Patil', 19500.00, '2026-03-01'),
(203, 106, 94, 'AI Based Energy Usage Forecasting', 'Dr. Patil', 19500.00, '2026-03-01'),
(204, 107, 72, 'Solar Panel Fault Detection System', 'Prof. Sharma', 16000.00, '2026-03-05'),
(204, 108, 90, 'Solar Panel Fault Detection System', 'Prof. Sharma', 16000.00, '2026-03-05'),
(205, 109, 85, 'Predictive Motor Maintenance Using Data', 'Dr. Rao', 25000.00, '2026-03-12'),
(206, 110, 78, 'IoT Based Transformer Health Monitoring', 'Prof. Joshi', 28000.00, NULL),
(206, 111, 91, 'IoT Based Transformer Health Monitoring', 'Prof. Joshi', 28000.00, NULL),
(207, 112, 87, 'Electric Vehicle Battery Health Prediction', 'Dr. Mehta', 32000.00, '2026-03-20'),
(207, 114, 89, 'Electric Vehicle Battery Health Prediction', 'Dr. Mehta', 32000.00, '2026-03-20'),
(208, 113, 68, 'Deep Learning Load Forecasting Model', 'Prof. Kulkarni', 24000.00, '2026-03-25'),
(209, 115, 81, 'Real Time Power Quality Analysis', 'Dr. Patil', 17500.00, '2026-04-02'),
(209, 116, 95, 'Real Time Power Quality Analysis', 'Dr. Patil', 17500.00, '2026-04-02'),
(210, 117, 73, 'AI Based Street Light Controller', 'Prof. Sharma', 12500.00, '2026-04-08'),
(210, 118, 82, 'AI Based Street Light Controller', 'Prof. Sharma', 12500.00, '2026-04-08'),
(211, 119, 88, 'Electrical Equipment Failure Prediction', 'Dr. Rao', 21000.00, '2026-04-12'),
(211, 120, 93, 'Electrical Equipment Failure Prediction', 'Dr. Rao', 21000.00, '2026-04-12'),
(212, 121, 76, 'Smart Grid Load Balancing System', 'Dr. Mehta', 35000.00, NULL),
(212, 122, 90, 'Smart Grid Load Balancing System', 'Dr. Mehta', 35000.00, NULL),
(213, 123, 71, 'Household Energy Usage Classification', 'Prof. Joshi', 14500.00, '2026-04-18'),
(214, 124, 89, 'Wind Turbine Performance Prediction', 'Dr. Patil', 27000.00, '2026-04-21'),
(214, 126, 96, 'Wind Turbine Performance Prediction', 'Dr. Patil', 27000.00, '2026-04-21'),
(215, 125, NULL, 'Electricity Theft Detection Using ML', 'Prof. Sharma', NULL, NULL),
(216, 127, 83, 'Battery Charging Time Prediction Model', 'Dr. Rao', 19000.00, '2026-05-02'),
(216, 128, 86, 'Battery Charging Time Prediction Model', 'Dr. Rao', 19000.00, '2026-05-02'),
(217, 129, 74, 'Power Consumption Anomaly Detection', 'Dr. Mehta', 15500.00, '2026-05-08'),
(218, 130, 92, 'Smart Home Energy Optimization System', 'Prof. Kulkarni', 23000.00, '2026-05-12'),
(219, 131, 80, 'Transformer Fault Classification Using ML', 'Dr. Patil', 26000.00, NULL),
(219, 132, 88, 'Transformer Fault Classification Using ML', 'Dr. Patil', 26000.00, NULL),
(220, 133, 69, 'Solar Energy Generation Prediction', 'Prof. Joshi', 18000.00, '2026-05-20'),
(221, 134, 97, 'AI Based Motor Fault Diagnosis', 'Dr. Rao', 21500.00, '2026-05-24'),
(221, 135, 91, 'AI Based Motor Fault Diagnosis', 'Dr. Rao', 21500.00, '2026-05-24'),
(222, 136, 75, 'Power Demand Forecasting Using Regression', 'Dr. Mehta', 17000.00, '2026-05-28'),
(223, 137, 89, 'Electric Vehicle Charging Station Analysis', 'Prof. Sharma', 30000.00, '2026-06-03'),
(223, 138, 85, 'Electric Vehicle Charging Station Analysis', 'Prof. Sharma', 30000.00, '2026-06-03'),
(224, 139, 70, 'Distribution Transformer Load Analysis', 'Prof. Kulkarni', 14000.00, '2026-06-08'),
(225, 140, 94, 'Smart Meter Data Analytics Dashboard', 'Dr. Patil', 19500.00, '2026-06-12'),
(225, 141, 90, 'Smart Meter Data Analytics Dashboard', 'Dr. Patil', 19500.00, '2026-06-12'),
(226, 142, 82, 'Electrical Demand Pattern Classification', 'Dr. Rao', 16500.00, '2026-06-15'),
(227, 143, 93, 'AI Based Solar Tracking System', 'Dr. Mehta', 29000.00, '2026-06-20'),
(228, 144, 67, 'Energy Consumption Forecasting Dashboard', 'Prof. Joshi', 15500.00, NULL),
(229, 145, 85, 'Industrial Motor Energy Optimization', 'Prof. Sharma', 20500.00, '2026-06-25'),
(230, 146, 96, 'Power System Fault Prediction', 'Dr. Patil', 27000.00, '2026-06-28');

select proj_subject ,count(distinct proj_subject) as project 
from projects
group by proj_subject;

SELECT COUNT(DISTINCT proj_subject) AS project
FROM projects;

SELECT COUNT(DISTINCT proj_id) AS project
FROM projects;

select count(*) as pro from projects;

desc projects;

# To retrive the data after deletion or to perform the rollback first u need to start the transaction and then only delete and can rollback and if perform commit then u cant retriev or rollback .

start transaction;

delete from projects;
select *  from projects; 
rollback; #UNDO
commit; # SAVING DATA

select * from tb2
where branch in(
	select branch 
    from tb2 
    where marks>90
);

create view projview as select proj_id, stud_id, proj_subject, guide from projects;
select * from projview
where guide = "Dr. Patil";

drop view projview;

select * from projview;

select stud_id, proj_subject, proj_mark+10 as newProjMark from projects;

select * from tb2
where not (branch = 'aids');

select * from tb2
where branch <> 'aids';

select * from tb2
where branch != 'aids';

select roll_No, branch, marks from tb2
union
select proj_id, proj_subject, proj_mark from projects;

# create databse if not exists abcdb;

select tb2.fullname , projects.proj_subject
 from tb2 join projects
 on tb2.roll_No = projects.stud_id;
 

 select count(*) from tb2,projects;
  select * from tb2,projects;
  select count(*) from tb2 join projects;
  
  select count(*)
 from tb2 join projects
 on tb2.roll_No = projects.stud_id;
 
 select tb2.roll_No,tb2.fullname ,projects_proj_id, projects.proj_subject
 from tb2 join projects
 on tb2.roll_No = projects.stud_id;
 
 select count(distinct projects.proj_id)
 from tb2 join projects
 on tb2.roll_No = projects.stud_id;
 
 # Note : join and inner join are same
 
 # COUNT OVER
 
 select tb2.roll_No,tb2.fullname ,projects.proj_id, projects.proj_subject, COUNT(*) OVER ()
 from tb2 join projects
 on tb2.roll_No = projects.stud_id; 
 
 select tb2.roll_No,tb2.fullname ,projects.proj_id, projects.proj_subject, COUNT(*) OVER () as total_rows
 from tb2 join projects
 on tb2.roll_No = projects.stud_id; 
 
 #students jinko proj nhi mila vo bhi
  select tb2.roll_No,tb2.fullname ,projects.proj_id, projects.proj_subject, COUNT(*) OVER () as total_rows
 from tb2 left join projects
 on tb2.roll_No = projects.stud_id; 
 
  select tb2.roll_No,tb2.fullname ,projects.proj_id, projects.proj_subject, COUNT(*) OVER () as total_rows
 from tb2 left join projects
 on tb2.roll_No = projects.stud_id
 UNION
 select count(*) over(),count(*) over(),count(*) over(),count(*) over(),count(*) over() from tb2 left join projects on tb2.roll_No = projects.stud_id
 union
 select count(*) over(),count(*) over(),count(*) over(),count(*) over(),count(*) over() from tb2 left join projects on tb2.roll_No = projects.stud_id
 where projects.proj_id is null;

  select tb2.roll_No,tb2.fullname ,projects.proj_id, projects.proj_subject, COUNT(*) OVER () as total_rows
 from tb2 right join projects
 on tb2.roll_No = projects.stud_id
 UNION
 select count(*) over(),count(*) over(),count(*) over(),count(*) over(),count(*) over() from tb2 right join projects on tb2.roll_No = projects.stud_id
 union
 select count(*) over(),count(*) over(),count(*) over(),count(*) over(),count(*) over() from tb2 right join projects on tb2.roll_No = projects.stud_id
 where projects.proj_id is null;
 /* INCORRECT CUZ FULL JOIN DOESNT WORK IN MYSQL THUS WE USE VIEW
  select tb2.roll_No ,tb2.fullname ,projects.proj_id, projects.proj_subject
 from tb2 full join projects
 on tb2.roll_No = projects.stud_id;
 
 desc tb2;
 */
 
 create view full_OuterJoin as
 select tb2.roll_No,tb2.fullname ,projects.proj_id, projects.proj_subject
 from tb2 left join projects
 on tb2.roll_No = projects.stud_id
 union
 select tb2.roll_No,tb2.fullname ,projects.proj_id, projects.proj_subject
 from tb2 right join projects
 on tb2.roll_No = projects.stud_id;
 
 select count(*) from full_OuterJoin where proj_id is null;
 
 # students working on same project

select p1.proj_id as prj_id, p1.stud_id as student1,p2.stud_id as student2
from projects p1 inner join projects p2
on p1.proj_id = p2.proj_id 
and p1.stud_id < p2.stud_id; -- to remove duplicate entries like a=b, b=a

#sum of stu_marks amd pro_marks
 select tb2.roll_No,tb2.marks ,projects.proj_mark, tb2.marks + projects.proj_mark as total_marks
 from tb2 inner join projects
 on tb2.roll_No = projects.stud_id;