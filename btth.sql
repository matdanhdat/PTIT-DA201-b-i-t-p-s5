create database quanlysinhvien;
use quanlysinhvien;
create table student(
student_id int primary key auto_increment,
full_name varchar(100) not null unique,
date_of_brith date not null,
sex bit default 1,
phone varchar(11) not null unique,
address varchar(150) not null,
point int not null check(point>=0) default 100
);
INSERT INTO student (full_name, date_of_brith, sex, phone, address, point) VALUES
('Nguyễn Văn An', '2000-05-15', 1, '0912345678', 'Hà Nội', 85),
('Trần Thị Bình', '2001-08-22', 0, '0912345679', 'Hải Phòng', 92),
('Lê Văn Cường', '2000-12-03', 1, '0912345680', 'Đà Nẵng', 78),
('Phạm Thị Dung', '2001-03-18', 0, '0912345681', 'Cần Thơ', 88),
('Hoàng Văn Đạt', '2000-07-29', 1, '0912345682', 'Hồ Chí Minh', 95),
('Vũ Thị E', '2001-11-11', 0, '0912345683', 'Nghệ An', 82),
('Đặng Văn Phong', '2000-09-07', 1, '0912345684', 'Thanh Hóa', 76),
('Bùi Thị Giang', '2001-06-25', 0, '0912345685', 'Hải Dương', 90),
('Ngô Văn Hùng', '2000-04-14', 1, '0912345686', 'Quảng Ninh', 87),
('Dương Thị Hoa', '2001-02-28', 0, '0912345687', 'Thái Bình', 93);
update student
set point=60
where sex=1;
delete from student
where point<30;
select student_id, full_name, sex, point
from student;
select full_name, date_of_birth, sex, point 
from student
where point>=80;


