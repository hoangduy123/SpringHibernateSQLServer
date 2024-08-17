Create database bkap
go
use bkap
go
Create table Students
(
    student_id varchar(10),
    full_name nvarchar(100),
    gender bit,
    birthday date,
    email varchar(100),
    phone varchar(100),
    address nvarchar(200),
    active bit,
    primary key(studentid)
)
go
insert into Students values('B001',N'Nguyễn Thanh Nam',1,'07/15/2000','namnt@gmail.com','0912344543',N'Hà Nội',1);
insert into Students values('B002',N'Nguyễn Thanh Tùng',1,'01/20/2000','tungnt@gmail.com','0955346633',N'Hà Nội',1);
insert into Students values('B003',N'Hoàng Hải Hữu',1,'04/16/2001','haihh@gmail.com','03456687878',N'Hà Giang',1);
insert into Students values('B004',N'Lê Thu Thủy',0,'05/12/1998','thuylt@gmail.com','0932435465',N'Hà Nội',1);
insert into Students values('B005',N'Nguyễn Văn Long',1,'01/23/2002','longnv@gmail.com','0895675565',N'Ninh Bình',1);
insert into Students values('B006',N'Trần Mỹ Linh',0,'02/28/2000','linhtm@gmail.com','0337688576',N'Quảng Ninh',1);

