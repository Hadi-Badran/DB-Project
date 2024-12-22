--1)
SELECT 
  classroom.classroom_id AS classroom_id,
  student.fname || ' ' || student.lname AS student_name,
  grade.name AS grade_name,
  grade.grade_description AS grade_desc
FROM 
   student
JOIN 
    classroom_student ON student.student_id = classroom_student.student_id
JOIN 
    classroom ON classroom_student.classroom_id = classroom.classroom_id
JOIN 
    grade ON classroom.grade_id = grade.grade_id
WHERE 
    classroom.classroom_id = 3
ORDER BY 
   classroom.classroom_id, student.lname;
--__________________________________________________
--2)
SELECT 
    t.*,
    co.course_id
FROM 
    teacher t
JOIN 
    classroom c ON t.teacher_id = c.teacher_id
JOIN 
    course co ON c.grade_id = co.grade_id
WHERE 
    co.course_id = 4
ORDER BY 
    co.course_id, t.teacher_id;
--_____________________________________________
--3)

SELECT 
   exam.name AS exam_name,  
   exam_type.name AS exam_type_name,                             
   exam_result.marks                                      
FROM 
     student
JOIN 
     exam_result ON student.student_id = exam_result.student_id 
JOIN 
     exam ON exam_result.exam_id = exam.exam_id
JOIN 
     exam_type ON exam.exam_type_id = exam_type.exam_type_id              
WHERE 
     student.student_id = 2
ORDER BY 
     exam_name, exam_type_name;
--___________________________________________
--4)

SELECT 
      attendance.date_of_attendance, 
  attendance.status, 
    attendance.remark
FROM 
    attendance
WHERE 
  attendance.student_id = 6
    AND attendance.date_of_attendance 
        BETWEEN TO_DATE('2024-1-01', 'YYYY-MM-DD') 
        AND TO_DATE('2024-01-5', 'YYYY-MM-DD')
ORDER BY 
    attendance.date_of_attendance;
--__________________________________________
--5)


select
    parent.fname || ' ' || parent.lname as parent_name,
    parent.email,
    parent.phone,
    parent.mobile,
    grade.name as grade_name
from 
    parent
join 
    student on parent.parent_id = student.parent_id
join 
    classroom_student on student.student_id = classroom_student.student_id
join 
    classroom on classroom_student.classroom_id = classroom.classroom_id
join 
    grade on classroom.grade_id = grade.grade_id
where 
    grade.grade_id = 1
order by 
    parent.fname, parent.lname;  
--____________________________________________________
--6)

select 
    exam_type.name as exam_type, 
    avg(to_number(exam_result.marks)) as average_marks
from 
    exam_result
join 
    exam on exam_result.exam_id = exam.exam_id
join 
    exam_type on exam.exam_type_id = exam_type.exam_type_id
where 
		  exam_result.course_id = 3  
group by 
    exam_type.name;
--______________________________________________
--7)

select 
    course.name as course_name,
    grade.name as grade_name,
    teacher.fname || ' ' || teacher.lname as teacher_name
from 
    course
join 
    grade on course.grade_id = grade.grade_id        
join 
    classroom on grade.grade_id = classroom.grade_id  
join 
    teacher on classroom.teacher_id = teacher.teacher_id 
order by 
    course.name;

--______________________________________________________
--8)

select 
    classroom.classroom_id, 
    classroom.year, 
    classroom.section, 
    count(classroom_student.student_id) as student_count
from 
    classroom
left join 
    classroom_student on classroom.classroom_id = classroom_student.classroom_id
group by 
    classroom.classroom_id, classroom.year, classroom.section
order by 
    classroom.classroom_id;
--____________________________________________________