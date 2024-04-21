use master ;
create database Math_depart ;
go
use Math_depart ;
go
create schema DEPART;
go
CREATE TABLE DEPART.courses 
(
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

ALTER TABLE DEPART.courses
ADD CONSTRAINT pk_courses primary key (course_code,course_department);
go
INSERT INTO DEPART.courses(course_code, course_title,course_department,course_preq, course_level, course_semester, course_hours, course_type,course_doctor,course_assistant)
VALUES 
-- Math department 
--year 2
  --SEMESTER 1

('MA2101', 'Applied Mathematics (1)', 'Math', 'MA1101', 2, 1, 3, 'Optional', N'سليم علي محمدين', null),
('MA2103', 'Abstract Algebra', 'Math', 'MA1206', 2, 1, 3,'Obligatory',  N'أيمن الشرقاوي', null),
('MA2105', 'Mathematical Analysis (1)', 'Math', 'MA1202', 2, 1, 3, 'Obligatory', null, null),
('ST2101', 'Probability Theory (1)', 'Math', null, 2, 1, 3, 'Obligatory', null, null),
('TS2101', 'Transferable skill', 'Math', null, 2, 1, 1, 'Obligatory', null, null),
('MA2107', 'Discrete Mathematics', 'Math', 'MA1206', 2, 1, 2, 'Optional', N'امجد سلامه', null),
('CS2103', 'Computer Programming', 'Math', 'CS1101', 2, 1, 3, 'Optional', N'فاطمة شعبان', null),
('MA2109', 'Selected topic of Pure Mathematics', 'Math', null, 2, 1, 3, 'Optional', null, null),
('ST2103', 'Sampling Theory', 'Math', 'MA1103', 2, 1, 2, 'Optional', N'بسمة الشيخ', null),
 --SEMESTER 2
('MA2202', 'Applied Mathematics (2)', 'Math', 'MA2101', 2, 2, 3, 'Obligatory', null, null),
('MA2204', 'Vector Analysis & Solid Geometry', 'Math', 'MA2105', 2, 2, 3, 'Obligatory', null, null),
('MA2206', 'Linear Algebra', 'Math', 'MA2103', 2, 2, 3, 'Obligatory', null, null),
('MA2208', 'Mathematical Analysis (2)', 'Math', 'MA2105', 2, 2, 3, 'Obligatory', N'هدى كمال', null),
('CS2204', 'Data Structure and Algorithms', 'Math', 'CS2103', 2, 2, 3, 'Optional', null, null),
('MA2210', 'Perturbation Theory', 'Math', 'MA1202', 2, 2, 3, 'Optional', null, null),
('MA2212', 'Number Theory', 'Math', 'MA2103', 2, 2, 3, 'Optional', null, null),
--year 3
--SEMESTER 1
('ST2206', 'Statistical inference (1)', 'Math', 'ST2101', 2, 2, 3, 'Optional', null, null),
('MA3101', 'Real Analysis (1)', 'Math', 'MA2105', 3, 1, 3, 'Obligatory', N'سعيد ابو العلا', null),
('MA3103', 'Numerical Analysis (1)', 'Math', 'MA2208', 3, 1, 3, 'Obligatory', N'عاطف عبد الجليل', null),
('MA3105', 'Electromagnetism', 'Math', 'MA2202', 3, 1, 3, 'Obligatory', N'خالد المرابع', null),
('MA3107', 'Algebra (1)', 'Math', 'MA2103', 3, 1, 3, 'Obligatory', N'عبدالمحسن بدوي', null),
('MA3109', 'Approximation Theory', 'Math', 'MA2208', 3, 1, 2, 'Optional', null, null),
('MA3111', 'Special Relativity', 'Math', null, 3, 1, 3, 'Optional', null, null),
('MA3113', 'Mathematical Logic & Boolean Algebra', 'Math', 'MA2107', 3, 1, 2, 'Optional', N'عبدالمحسن بدوي & تهاني الشيخ', null),
('MA3115', 'Theory of Ordinary Differential Equations', 'Math', 'MA2208', 3, 1, 3, 'Optional', null, null),
--SEMESTER 2
('MA3202', 'Analytical Dynamics', 'Math', 'MA2208', 3, 2, 3, 'Obligatory', null, null),
('MA3204', 'Topology (1)', 'Math', 'MA3101', 3, 2, 3, 'Obligatory', null, null),
('MA3206', 'Quantum mechanics (1)', 'Math', 'MA3103', 3, 2, 3, 'Obligatory', null, null),
('MA3208', 'Mathematical Programming', 'Math', 'MA1204', 3, 2, 3, 'Obligatory', null, null),
('MA3210', 'Optimal Control(1)', 'Math', 'MA3103', 3, 2, 3, 'Optional', null, null),
('MA3212', 'Special Functions', 'Math', 'MA3101', 3, 2, 3, 'Optional', null, null),
('MA3214', 'Measure Theory', 'Math', 'MA3101', 3, 2, 3, 'Optional', null, null),
('MA3216', 'Elasticity Theory', 'Math', 'MA2202', 3, 2, 3, 'Optional', null, null),
--year 4
--SEMESTER 1
('MA4101', 'Functional Analysis (1)', 'Math', 'MA3210', 4, 1, 3, 'Obligatory', N'صالح عبد العزيز', null),
('MA4103', 'Fluid Mechanics (1)', 'Math', 'MA3103', 4, 1, 3, 'Obligatory', N'قدري زكريا', null),
('MA4105', 'Operations Research (1)', 'Math', 'MA3208', 4, 1, 3, 'Obligatory', N'محمد عبد الهادي', null),
('MA4107', 'Differential Geometry (1)', 'Math', 'MA2204', 4, 1, 3, 'Obligatory', N'عبدالعزيز الباجوري', null),
('MA4109', 'Numerical Analysis (2)', 'Math', 'MA3202', 4, 1, 3, 'Optional', N'احمد النموري', null),
('MA4111', 'Topology (2)', 'Math', 'MA3204', 4, 1, 2, 'Optional', N'اسامه امبابي', null),
('MA4113', 'General Theory of Relativity', 'Math', 'MA3105', 4, 1, 3, 'Optional', null, null),
('MA4115', 'Quantum Mechanics (2)', 'Math', 'MA3206', 4, 1, 2, 'Optional', N'احمد ابو عنبر', null),
--SEMESTER 2
('MA4202', 'Complex Analysis', 'Math', 'MA3103', 4, 2, 3, 'Obligatory', null, null),
('MA4204', 'Algebra (2)', 'Math', 'MA3204', 4, 2, 3, 'Obligatory', null, null),
('MA4206', 'Partial differential equations', 'Math', 'MA2208', 4, 2, 3, 'Obligatory', null, null),
('MA4208', 'Review article and Research', 'Math', null, 4, 2, 2, 'Obligatory', null, null),
('MA4210', 'Fluid Mechanics (2)', 'Math', 'MA4103', 4, 2, 3, 'Obligatory', null, null),
('MA4212', 'Differential Geometry (2)', 'Math', 'MA4107', 4, 2, 2, 'Optional', null, null),
('MA4214', 'Functional Analysis (2)', 'Math', 'MA4101', 4, 2, 2, 'Optional', null, null),
('MA4216', 'Real Analysis (2)', 'Math', 'MA3101', 4, 2, 2, 'Optional', null, null),
('MA4218', 'Electrodynamics', 'Math', 'MA3202', 4, 2, 2, 'Optional', null, null);