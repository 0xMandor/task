drop database CS;
drop schema department;
drop table department.courses;
go

Create database CS;
use CS;
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


INSERT INTO department.courses (course_code, course_preq, course_title, course_level, course_semester, course_hours, course_type,course_department,course_doctor,course_assistant)
VALUES 
    --Semester 1
    ('CH1101', NULL, 'General Chemistry (1)', '1', '1', 3, 'Obligatory','Physical Science', NULL, NULL),
    ('MA1101', NULL, 'Mathematics (1)', '1', '1', 3, 'Obligatory','Physical Science',N'نهى الشرقاوي & أيمن الشرقاوي',N'الآء عادل & محمود السيد & ماجدة & دينا طارق & شيماء & ندا & أيمن السعيد'),
    ('PH1121', NULL, 'Physics (1)', '1', '1', 3, 'Obligatory','Physical Science',NULL , NULL),
    ('UN1101',NULL, 'Scientific English', '1', '1', 2, 'Obligatory','Physical Science',NULL, NULL),
    ('PH1125',NULL, 'General Physics', '1', '1', 3, 'Optional','Physical Science',NULL , NULL),
    ('BIO1101', NULL, 'General Biology', '1', '1', 3, 'Optional','Physical Science',NULL,NULL),
    ('ST1103',NULL, 'Mathematical statistics', '1', '1', 3, 'Optional','Physical Science',N'محمد عزت',N'علي طه & هاجر علي & دينا طارق & سلفانا & ماجدة & ندا محمود & آية جبر & شيماء'),
    ('CS1101',NULL, 'Programming', '1', '1', 3, 'Optional','Physical Science',N'إبراهيم جاد',N'آية عبدالعزيز & محمود البرادعي & إلهام الفقي & هانيا السيد & شفاء مصطفى'),
    ('UN1103',NULL, N'تاريخ وفلسفة العلوم' , '1', '1', 1,'Optional','Physical Science',NULL, NULL),
    ('UN1105',NULL, N'مبادئ الإدارة والقيادة', '1', '1', 1, 'Optional','Physical Science',NULL, NULL),
    ('UN1107',NULL, N'الثقافة البيئية' , '1', '1', 1, 'Optional','Physical Science',NULL, NULL),
    --Semester 2
    ('CH1202', 'CH1101', 'General Chemistry (2)', '1', '2', 3, 'Obligatory','Physical Science', NULL ,NULL),
    ('MA1202', 'MA1101', 'Mathematics (2)', '1', '2', 3, 'Obligatory','Physical Science', NULL ,NULL),
    ('PH1222', 'PH1121', 'Physics (2)', '1', '2', 3, 'Obligatory','Physical Science', NULL ,NULL),
    ('UN1202', NULL, N'اللغة العربية', '1', '2', 2, 'Obligatory','Physical Science', NULL ,NULL),
    ('CH1204', 'CH1101', 'Tutorial', '1', '2', 3, 'Optional','Physical Science', NULL ,NULL),
    ('PH1226', NULL, ' Introduction to Biophysics', '1', '2', 3, 'Optional','Physical Science', NULL ,NULL),
    ('MA1204', NULL, 'Applied Mathematics', '1', '2', 3, 'Optional','Physical Science', NULL ,NULL),
    ('MA1206', NULL, 'Algebra', '1', '2', 3, 'Optional','Physical Science', NULL ,NULL),
    ('UN1204', NULL, N'التفكير النقدي', '1', '2', 1, 'Optional','Physical Science', NULL ,NULL),
    ('UN1206', NULL, N'الثقافة الإسلامية', '1', '2', 1, 'Optional','Physical Science', NULL ,NULL),
    ('UN1208', NULL, N'التعليم الذاتي', '1', '2', 1, 'Optional','Physical Science', NULL ,NULL);

