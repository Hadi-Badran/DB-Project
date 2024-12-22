--1)Classroom-wise student performance (average marks for each classroom)

create or replace view report1 as
select 
   classroom.classroom_id,
     classroom.year,
    classroom.section,
    avg(to_number(exam_result.marks)) as average_mark
from 
    classroom
join 
    classroom_student on classroom.classroom_id = classroom_student.classroom_id
join 
    exam_result on classroom_student.student_id = exam_result.student_id
group by 
    classroom.classroom_id, classroom.year, classroom.section
order by 
    classroom.classroom_id;
--______________________________________
--2)Teacher-wise course details and the grades associated with those courses.

create or replace view report2 as
select 
    teacher.teacher_id,
    teacher.fname || ' ' || teacher.lname as teacher_name,
    course.course_id,
    course.name as course_name,
    grade.grade_id, 
    grade.name as grade_name
from 
    teacher
join 
    classroom on teacher.teacher_id = classroom.teacher_id
join 
    grade on classroom.grade_id = grade.grade_id
join 
    course on grade.grade_id = course.grade_id
order by 
    teacher.teacher_id, course.course_id;
