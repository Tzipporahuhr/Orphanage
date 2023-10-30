use OrphanageDB
go

drop table if exists Student
go

create table dbo.Student(
    StudentId int not null identity primary key,
    FirstName varchar(30) not null constraint ck_Student_FirstName_cannot_be_blank check(FirstName > ''),
    LastName varchar(30) not null constraint ck_Student_LastName_cannot_be_blank check(LastName > ''),
    Floor int not null constraint ck_Student_Floor_must_be_between_1_and_3 check(Floor between 1 and 3),
    RoomNumber int not null constraint u_Student_RoomNumber unique,
    constraint ck_Student_RoomNumber_must_be_between_1_and_50 check(RoomNumber between 1 and 50),
    DateOfBirth date not null constraint ck_Student_DateOfBirth_must_be_past_1900 check(year(DateOfBirth) > 1900),
    State varchar(50) not null constraint ck_Student_State_cannot_be_blank check(State > ''),
    DateEnrolled date not null constraint ck_Student_DateEnrolled_cannot_be_future_date check(DateEnrolled <= Getdate()),
    DateLeft date null constraint ck_Student_DateLeft_cannot_be_future_date check(DateLeft <= Getdate()),
    Gender char(1) not null constraint ck_Student_Gender_must_be_M_or_F check(Gender in ('M', 'F')),
    constraint ck_Student_enrolled_must_be_10_or_older check(DATEDIFF(year, DateOfBirth, DateEnrolled) >= 10),
    constraint ck_DateEnrolled_must_be_before_DateLeft check(DateEnrolled < DateLeft)
)