use OrphanageDB
go

delete Student
go

insert Student(FirstName, LastName, Gender, Floor, RoomNumber, DateOfBirth, [State], DateEnrolled, DateLeft)
select 'Ron', 'Smith', 'M', 3, 1, '07/07/2000','Alabama','12/14/2010', null
union select 'Osher', 'Sharon', 'M', 3, 2, '03/03/2002', 'Alaska','January 3, 2013', null
union select 'Peter', 'Smith', 'M',  3, 3, '05/03/1999',	'Arizona','February 14, 2010', 'march 7, 2021'
union select 'Sally', 'Cohen', 'F', 3, 4, '04/03/ 2000', 'new jersey', 'June 15 2011', 'march 4, 2012'
union select 'Shuli', 'Cohen', 'F',  3,5, '02/03/1970', 'California','September 9, 1985', null
union select 'chavi', 'Cohen', 'F', 2, 6,  '04/03/1970', 'brooklyn', 'August 1, 1981', 'september 2, 1990'
union select 'Tzvi', 'Gold', 'M', 2, 7, '09/08/2000',	'Connecticut','January 9, 2011', null
union select 'Yaakov', 'Gole', 'M', 2, 8, '06/04/2005', 'connecticut','December 7, 2016', null
union select 'Shalom', 'Feinkork', 'M',  2, 9, '01/02/2002',	'Florida', 'March 3, 2013', 'march 3, 2015'
union select 'Sara', 'Bell', 'F', 2,10, '03/02/2000',	'new york','January 2, 2011', 'May 4, 2012'
union select 'Shira', 'Well', 'F', 1, 11,' 05/04/2001',	'Hawaii','August 21, 2011', null
union select 'chaim', 'well', 'M', 1,12, '04/03/1980',	'hawaii','July 3, 1991', 'march 4, 2001'
union select 'Hadassa', 'CarPool', 'F', 1, 13, '02/02/2002',	'Illinois','December 3, 2013', null
union select 'Chavi', 'Hello', 'F',  1, 14, '02/03/2003',	'Indiana','December 11, 2014', null
union select 'Shaindy', 'See', 'F',  1, 15, '02/06/2005',	'Iowa','December 28, 2017', null
