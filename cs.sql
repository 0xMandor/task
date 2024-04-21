use cs ;
go
Create schema department;
go 

CREATE TABLE department.courses (
    course_code VARCHAR(7) NOT NULL,
    course_preq VARCHAR(7) NULL,
    course_title NVARCHAR(60) NOT NULL,
    course_department VARCHAR(25) NOT NULL,
    course_level VARCHAR(1) NOT NULL CHECK (course_level IN ('1', '2', '3', '4')),
    course_semester VARCHAR(1) NOT NULL CHECK(course_semester IN ('1', '2')),
    course_hours INT NOT NULL CHECK (course_hours IN (1, 2, 3)),
    course_type VARCHAR(10) NOT NULL CHECK (course_type IN ('Obligatory', 'Optional')),
    course_doctor NVARCHAR(50) NULL,
    course_assistant NVARCHAR(80) NULL
);
ALTER TABLE department.courses
ADD CONSTRAINT pk_courses primary key (course_code,course_department);

go
INSERT INTO department.courses(course_code,course_preq,course_title,course_level,course_semester,course_hours,course_type,course_department ,course_doctor,course_assistant)
VALUES 
--Computer Science
-- Year 2
-- SEMESTER 1

('MA2103','MA1206','ABSTRACT ALGEBRA',2,1,3,'Obligatory','MATHEMATICS','أيمن الشرقاوي',null),
('MA2105','MA1202','MATHEMATICal ANALYSIS',2,1,3,'Obligatory','MATHEMATICS','هدى كمال',null),
('CS2101','CS1101','COMPUTER SYSTEMS',2,1,3,'Obligatory','MATHEMATICS',' ابراهيم جاد' ,null),
('TS2101',NULL,'TRANSFERABLE SKILL',2,1,1,'Obligatory','MATHEMATICS', null ,null),
('MA2107','MA2106','DISCRETE MATHEMATICS',2,1,2,'Optional','MATHEMATICS', 'أمجد سلامة' ,null),
('CS2103','CS1101','COMPUTER PROGRAMMING',2,1,3,'Optional','MATHEMATICS', 'فاطمة شعبان' ,null),
('ST2101','ST1101','PROBABILITY THEORY(1)',2,1,3,'Optional','MATHEMATICS', null ,null),
('MA2121','MA1101','MATHEMATICal METHODS',2,1,3,'Optional','MATHEMATICS','هدى كمال',null),

--Semester 2
('MA2202','MA2101','LOGIC DESIGN',2,2,3,'Obligatory','MATHEMATICS', null ,null),
('MA2204','MA2105','VECTOR ANALYSIS & SOLID GEOMETRY',2,2,3,'Obligatory','MATHEMATICS', null ,null),
('MA2206','MA2103','LINEAR ALGEBRA',2,2,3,'Obligatory',' MATHEMATICS', null ,null),
('MA2208','MA2105','MATHEMATICal ANALYSIS(2)',2,2,3,'Obligatory','MATHEMATICS', null ,null),
('CS2204','CS2103','DATA STRUCTURE AND ALGORITHMS',2,2,3,'Optional','MATHEMATICS', null ,null),
('MA2210','MA1202','PERTURBATION THEORY',2,2,3,'Optional','MATHEMATICS', null ,null),
('MA2212','MA2103','NUMBER THEORY',2,2,3,'Optional','MATHEMATICS', null ,null),
('ST2206','ST2101','STATISTICAL INFERENCE(1)',2,2,3,'Optional','MATHEMATICS', null ,null),                 
--Computer Science
-- Year 3
--Semester 1
('MA3103','MA2208','NUMERICAL ANALYSIS(!)',3,1,3,'Obligatory','MATHEMATICS',null,null),
('MA3113','MA2107','MATHEMATICal LOGIC AND BOOLEON ALGEBRA',3,1,3,'Obligatory','MATHEMATICS',null,null),
('CS3103','CS2202','DESIGN AND ANALYSIS OF ALGORITHMS',3,1,3,'Obligatory','MATHEMATICS',null ,null),
('CS3101','CS2202','COMPUTER SYSTEM AND ASSEMBLY LANGUAGES PROGRAMMING',3,1,3,'Obligatory','MATHEMATICS', null ,null),
('MA3121','MA2208','REAL ANALYSIS AND MEASUREMENT THEORY',3,1,2,'Optional','MATHEMATICS',null,null),
('MA3125','MA2111','ABSTRUCT AND TOPOLOGCAL ALGEBRA ',3,1,2,'Optional','MATHEMATICS', null ,null),
('CS3105',NULL,'HARMONIC AND DATA THEORY',3,1,3,'Optional','MATHEMATICS', null ,null),
('CS3107',NULL,'PROGRAMMING LANGUAGE THEORY',3,1,3,'Optional','MATHEMATICS',null,null),


--Semester 2
('CS3202',NULL,'THEORY OF MECHANISMS',3,2,3,'Obligatory','MATHEMATICS', null ,null),
('CS3204','CS2202','OPERATING SYSTEMS ',3,2,3,'Obligatory','MATHEMATICS', null ,null),
('CS3206','CS3103','COMPUTER ARCHITECUTURE',3,2,3,'Obligatory',' MATHEMATICS', null ,null),
('CS3208','CS2107','SYSTEM SUMLATON',3,2,3,'Obligatory','MATHEMATICS', null ,null),
('CS3212','CS2204','PROGRAM DESIGN AND ANALYSIS',3,2,3,'Optional','MATHEMATICS', null ,null),
('MA3210','MA3103','OPTIMAL CONTROL(1)',3,2,3,'Optional','MATHEMATICS', null ,null),
('ST3212','ST3105','RANDMIZATION PROCESSES',3,2,3,'Optional','MATHEMATICS', null ,null),
('CS3210','CS2101','SYSTEMS ANALYSIS AND DESIGN',2,2,3,'Optional','MATHEMATICS', null ,null),
 


  --Computer Science
-- Year 4
--Semester 1
('MA4105','MA1204','OPERATIONS RESEARCH(1)',4,1,3,'Obligatory','MATHEMATICS',null,null),
('CS4101','MA3204','DATA BASE',4,1,3,'Obligatory','MATHEMATICS',null,null),
('CS4103','CS3101','THEORY 0F COMPUTATION',4,1,3,'Obligatory','MATHEMATICS',null ,null),
('CS4105','CS2202','COMPUTER GRAPHICS',4,1,3,'Obligatory','MATHEMATICS', null ,null),
('CS4107','CS3101','ADVANCED PROGRAMS IN JAVA LANGUAGE',4,1,2,'Optional','MATHEMATICS',null,null),
('CS4109',NULL,'SELECTED TOPICES IN COMPUTER SCIENCES',4,1,3,'Optional','MATHEMATICS', null ,null),
('CS4111','CS3101','EXPERT SYSTEMS',4,1,3,'Optional','MATHEMATICS', null ,null),
('MA4121','MA3204','MODERN ALGEBRA AND TOBOLOGY',4,1,2,'Optional','MATHEMATICS',null,null),


--Semester 2
('CS4202',NULL,'البحث والمقال',4,2,2,'Obligatory','MATHEMATICS', null ,null),
('CS4204','CS3202','التصميم الجامع',4,2,2,'Obligatory','MATHEMATICS', null ,null),
('CS4206','CS4105','DIGITAL IMAGE PROCESSING',4,2,2,'Obligatory',' MATHEMATICS', null ,null),
('CS4208','CS4101','COMPUTER SECURITY TECHNOLGY',4,2,3,'Obligatory','MATHEMATICS', null ,null),
('CS4210','CS4101','COMPUTER NETWORKING',4,2,3,'Obligatory','MATHEMATICS', null ,null),
('MA4224','MA3210','OPTIMAL CONTROL(2)',4,2,3,'Optional','MATHEMATICS', null ,null),
('CS4212','CS4101','DISTRIBUTED SYSTEMS',4,2,3,'Optional','MATHEMATICS', null ,null),
('CS4214','CS4101','NEURAL NETWORK',4,2,3,'Optional','MATHEMATICS', null ,null),
('ST4204','ST4101','ANALYSIS TIME SERIES',4,2,3,'Optional','MATHEMATICS', null ,null);                     