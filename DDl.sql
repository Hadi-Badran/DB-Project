--table teacher:

create table teacher (
 teacher_id int primary key,
  email varchar2(45) unique not null,
password varchar2(45) not null,
fname varchar2(45) not null,
 lname varchar2(45) ,
 dob date not null,
  phone varchar2(15),
 mobile varchar2(15) unique, 
  status number(1)  not null check (status in (0, 1)), 
  last_login_date date,
  last_login_ip varchar2(45)
);

--___________________________________
--table grade:
create table grade(
 grade_id int primary key,
 name varchar2(45),
  grade_description varchar2(45) 
); 
--____________________________________
--table classroom:

create table classroom (
 classroom_id int primary key, 
 year number(4) , 
  grade_id int , 
 section char(2) , 
 status number(1)   check (status in (0, 1)), 
  remarks varchar2(45), 
   teacher_id int,
    constraint fk_table_grade foreign key (grade_id) references grade(grade_id),
    constraint fk_table_teacher foreign key (teacher_id) references teacher(teacher_id)
);
--__________________________________
--table parent:

create table parent(
   parent_id int primary key,
   email varchar2(45) unique not null,
    password varchar2(45) not null,
  fname varchar2(45) not null,
   lname varchar2(45),
   dob date,
   phone varchar2(15),
   mobile varchar2(15) unique,
    status number(1)  check (status in (0, 1)),
    last_login_date date,
    last_login_ip varchar2(45)
    
);
--__________________
--table student:

create table student(
  student_id int primary key,
  email varchar2(45) unique not null,
  password varchar2(45) not null,
   fname varchar2(45) not null,
   lname varchar2(45) ,
    dob date ,
    phone varchar2(15),
    mobile varchar2(15) ,
    parent_id int,
    date_of_join date,
    status number(1) check (status in (0, 1)),
    last_login_date date,
    last_login_ip varchar2(45),
    constraint fk_parent foreign key (parent_id) references parent(parent_id)
 
);
--________________________
--table classroom_student:

create table classroom_student(
classroom_id int,
student_id int,
primary key (classroom_id, student_id),
  constraint fk_classroom foreign key (classroom_id) references classroom(classroom_id),
  constraint fk_student foreign key (student_id) references student(student_id)
);
--_______________________
--table attendance:

create table attendance (
 date_of_attendance date,
student_id int,
status number(1),
 remark varchar2(255),
   primary key (date_of_attendance, student_id),
    constraint fk_student_attendance foreign key (student_id) references student(student_id)
);
--____________________
--table exam_type:

create table exam_type(
 exam_type_id int primary key,
 name varchar2(45),
 description_exam varchar(45)  
);
--_______________________
--table exam :

create table exam(
 exam_id int primary key,
 exam_type_id int,
 name varchar2(45),  
 start_date date,
    constraint fk_exam_type foreign key (exam_type_id) references exam_type(exam_type_id)
);
--__________________
--table course:

create table course (
 course_id int primary key,
 name varchar2(45),
 description varchar2(45),
 grade_id int,
    constraint fk_grade foreign key (grade_id) references grade(grade_id)
);
  --_________________________

--table exam_result:

create table exam_result (
 exam_id int,
 student_id int,
 course_id int,
 marks varchar2(45),
primary key (exam_id, student_id, course_id),
 constraint fk_exam_result_exam foreign key (exam_id) references exam(exam_id),
 constraint fk_exam_result_student foreign key (student_id) references student(student_id),
 constraint fk_exam_result_course foreign key (course_id) references course(course_id)
);
--_____________________________
--notice:
/*
    -- The email and mobile number must be unique to ensure no duplicate entries exist for different parents.
    -- The status column ensures that the status is either 0 (inactive) or 1 (active).

    -- Constraints applied based on business requirements and the ER diagram:
    -- 1. `NOT NULL` is used for required data (e.g., email, password, first name).
    -- 2. `UNIQUE` ensures that email and mobile are unique across records.
    -- 3. `CHECK` constraint ensures that status is only either 0 (inactive) or 1 (active).
    -- These constraints maintain data integrity and proper functionality of the system.
*/

--notice for key:
/*
    -- The `parent_id` in the `student` table is a foreign key referencing the `parent_id` in the `parent` table.
    -- This establishes a relationship between the `student` and `parent` tables, linking each student to a parent.

    -- The `grade_id` in the `classroom` table is a foreign key referencing the `grade_id` in the `grade` table.
    -- This ensures that each classroom is associated with a specific grade.

    -- The `teacher_id` in the `classroom` table is a foreign key referencing the `teacher_id` in the `teacher` table.
    -- This links each classroom to a specific teacher.

    -- The `grade_id` in the `course` table is a foreign key referencing the `grade_id` in the `grade` table.
    -- This connects each course to a specific grade.

    -- The `classroom_id` in the `classroom_student` table is a foreign key referencing the `classroom_id` in the `classroom` table.
    -- This links each student to a classroom.

    -- The `student_id` in the `classroom_student` table is a foreign key referencing the `student_id` in the `student` table.
    -- This establishes the relationship between the `classroom_student` and `student` tables.

    -- The `student_id` in the `attendance` table is a foreign key referencing the `student_id` in the `student` table.
    -- This tracks the attendance of each student.

    -- The `exam_type_id` in the `exam` table is a foreign key referencing the `exam_type_id` in the `exam_type` table.
    -- This connects each exam to a specific exam type.

    -- The `exam_id` in the `exam_result` table is a foreign key referencing the `exam_id` in the `exam` table.
    -- This links each exam result to the respective exam.

    -- The `student_id` in the `exam_result` table is a foreign key referencing the `student_id` in the `student` table.
    -- This associates each exam result with a specific student.

    -- The `course_id` in the `exam_result` table is a foreign key referencing the `course_id` in the `course` table.
    -- This links each exam result to a specific course.
*/





