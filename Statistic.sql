use master;
create database Statistic;
go
use Statistic;
go
create schema depm;
go

CREATE TABLE depm.courses (
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


ALTER TABLE depm.courses
ADD CONSTRAINT pk_courses primary key (course_code,course_department);
go
INSERT INTO depm.courses(course_code, course_preq, course_title, course_level, course_semester, course_hours, course_type,course_department,course_doctor,course_assistant)
VALUES 

-- Year 2

    --Semester 1
('ST2101','ST1103','Probability theory(1)',2,1,3,'Obligatory', 'MATHEMATICS',NULL,NULL),
('MA2103','MA1206','Abstract algebra and linear algebra',2,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('MA2105','MA1202','Mathematical analysis',2,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST2103','ST1103','Sampling theoInvalid object name',2,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('TS2101',NULL,'Translation skills',2,1,1,'Obligatory','MATHEMATICS',NULL,NULL),
('ST2107','ST1103','Applied statistics',2,1,2,'Optional','MATHEMATICS',NULL,NULL),
('CS2103','CS1101','Computer programming',2,1,3,'Optional','MATHEMATICS',NULL,NULL),
('MA2109',NULL,'Selected topics in pure mathematics',2,1,2,'Optional','MATHEMATICS',NULL,NULL),
('CS2105','CS1101','File operations',2,1,3,'Optional','MATHEMATICS',NULL,NULL),

    --Semester 2
('MA2220','MA2103','Numerical analysis',2,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST2202','ST2101','Random processes',2,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST2204','ST2101','Distribution theory',2,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST2206','ST2101','Statistical inference (1)',2,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('MA2212','MA2103','Number theory',2,2,3,'Optional','MATHEMATICS',NULL,NULL),
('CS2204','CS2103','Data structures and algorithms',2,2,3,'Optional','MATHEMATICS',NULL,NULL),
('ST2208','ST2103','Mathematical statistics',2,2,3,'Optional','MATHEMATICS',NULL,NULL),
('ST2210','ST2101','Advanced possibilities',2,2,3,'Optional','MATHEMATICS',NULL,NULL),

-- Year 3

    --Semester 1

('ST3101','ST2206','Correlation theory (1)',3,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('MA3103',NULL,'Operations research (1)',3,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST3121','ST2101','Probability theory (2)',3,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST3103','ST2206','Design of experiments',3,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('MA3109','MA2208','Convergence theory',3,1,2,'Optional','MATHEMATICS',NULL,NULL),
('ST3105','ST2101','Storage theory',3,1,3,'Optional','MATHEMATICS',NULL,NULL),
('CS3103','CS2202','Design and analysis of algorithms',3,1,2,'Optional','MATHEMATICS',NULL,NULL),
('ST3107','ST2206','Absolute data analysis',3,1,3,'Optional','MATHEMATICS',NULL,NULL),

    --Semester 2

('MA3210','MA3103','opitmal control and functional analysis',3,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST3202','ST3101','Regression analysis',3,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST3204','ST2202','Statistical programming',3,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST3212','ST3105','Statistical methods',3,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST3206','ST2101','Monotonic statistics',3,2,3,'Optional','MATHEMATICS',NULL,NULL),
('ST3208','ST3101' ,'Statistical decision theory',3,2,3,'Optional','MATHEMATICS',NULL,NULL),
('ST3210','ST3101','Correlation theory (1)',3,2,3,'Optional','MATHEMATICS',NULL,NULL),
('ST3214',NULL,'Selected topics in statistics (1)',3,2,3,'Optional','MATHEMATICS',NULL,NULL),

-- Year 4

    --Semester 1

('MA4105','MA3103','Operations research (2)',4,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST4101','ST2206',N'احصاء لامعلمى',4,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST4103','ST3101',N'نظرية الصلاحية',4,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST4105','ST2206',N'(استدلال احصائي(2',4,1,3,'Obligatory','MATHEMATICS',NULL,NULL),
('MA4121','MA2103',N'توبولوجى',4,1,3,'Optional','MATHEMATICS',NULL,NULL),
('MA4123','MA3101',N'تحليل مركب وتحليل دالي',4,1,2,'Optional','MATHEMATICS',NULL,NULL),
('CS4121',NULL,N'تقنية المحاكاه',4,1,2,'Optional','MATHEMATICS',NULL,NULL),
('ST4107','ST1202',N'نظرية التقدير',4,1,2,'Optional','MATHEMATICS',NULL,NULL),
('ST4115',NULL,'Selected topics in statistics (2)',4,1,3,'Optional','MATHEMATICS',NULL,NULL),

    --Semester 2

('ST4202',NULL,N'المقال والبحث',4,2,2,'Obligatory','MATHEMATICS',NULL,NULL),
('ST4204','ST4101',N'تحلبل السلاسل الزمنية',4,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST4206','ST3105',N'احصاء متعدد المتغيرات',4,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST4208','ST4105',N'احصاء استخراج البيانات',4,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST4210','ST4105',N'البرامج الاحصائية',4,2,3,'Obligatory','MATHEMATICS',NULL,NULL),
('ST4212','MA3210',N'الضيط الاحصائي للجودة',4,2,2,'Optional','MATHEMATICS',NULL,NULL),
('ST4214','ST3212',N'نظرية الطوابير',4,2,2,'Optional','MATHEMATICS',NULL,NULL),
('MA4226','MA2105',N'معادلات نفاضلية جزئية ودوال خاصة',4,2,2,'Optional','MATHEMATICS',NULL,NULL),
('CS4222',NULL,N'مواضيع مختارة في علوم الحاسوب',4,2,2,'Optional','MATHEMATICS',NULL,NULL);       

go