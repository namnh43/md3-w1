select * from student where fullname LIKE "Nguyen%";
select * from student where fullname LIKE "%Anh";
select * from student where age between 18 and 25;
select * from student where id = 12 OR id = 13;
-- Thống kê số lượng học viên các lớp (count) 
select c.id ,count(c.id) as number,c.name, c.language,c.description
from class c
join student s
on c.id = s.class_id
group by c.id;
-- Thống kê số lượng học viên tại các tỉnh (count) 
select a.id,a.address ,count(a.id) as number
from address a
join student s
on a.id = s.address_id
group by a.id;
-- Tính điểm trung bình của các khóa học (avg)
select course.id,course.name,avg(point.point) from course
join point on course.id = point.course_id group by course.id
order by course.name;

-- Đưa ra khóa học có điểm trung bình cao nhất (max)
select MAX(avarage) as max from (select course.id,course.name, avg(point.point) as avarage from course
join point on course.id = point.course_id group by course.id) sub
