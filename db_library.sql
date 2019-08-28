create Database db_Library
Use db_Library

create table Library_branch(
BranchID Int Primary Key not null Identity (1,1),
BranchName varchar(max) not null,
Address varchar(max) not null
);
Insert into Library_branch
(BranchName,Address)
Values
('Sharpstown','123456 Imaginary Ln Sharpstown,CO 64209'),
('Central','42069 Bull rd Central City, WA 69696'),
('Evergreen', '87284 Main St, Evergreen PN 468912'),
('Jefferson', '18000 2nd Ave, Columbia NM 781234')

create table Publisher(
PublisherId int not null Identity(1,1),
PublisherName varchar(max),
Address varchar(max),
Phone varchar(max),
Primary Key (PublisherId)
)

Insert into Publisher
(PublisherName, Address, Phone)
Values
('Penguin Publishing','132 wallaby way, Sacremento CA 90227','303-555-6969'),
('OldTimey Publishing','9672 Acre st, Springfield MT 54214', '555-666-1234'),
('Text-to-Print Publishing','7532 Main St, Colorado Springs CO 87450','123-030-9999')

Create Table BOOK_AUTHORS(
BookId Int Foreign Key References books(bookId),
AuthorName varchar(max) not null
);

Insert into BOOK_AUTHORS
(BookId, AuthorName)
Values
('1','Stephen King'),
('2','Stephen King'),
('3','Stephen King'),
('4','Stephen King'),
('5','Stephen King'),
('6','Stephen King'),

('7','H.P. Lovecraft'),

('8','J.K. Rowling'),
('9','J.K. Rowling'),
('10','J.K. Rowling'),
('11','J.K. Rowling'),
('12','J.K. Rowling'),
('13','J.K. Rowling'),
('14','J.K. Rowling'),

('15','R.L. Stine'),
('16','R.L. Stine'),
('17','R.L. Stine'),

('18','Mark Lee'),
('19','J.R.R. Tolkien'),
('20','Mark Edwards'),
('21','Gerorge R.R. Martin'),
('22','Reece Hirsch'),
('23','Neil Gaiman'),
('24','Micheal Crichton')

Create table books(
BookId Int Primary Key not null Identity(1,1),
Title Varchar(max),
PublisherId Int Foreign Key References Publisher(PublisherId)
);

Insert into books
(Title,PublisherId)
Values
('It','1'),
('Pet Semantary','1'),
('Carrie','1'),
('The Stand','1'),
('The Cell','1'),
('The Shining','1'),
('The Necronomicon','2'),
('Harry Potter 1','3'),
('Harry Potter 2','3'),
('Harry Potter 3','3'),
('Harry Potter 4','3'),
('Harry Potter 5','3'),
('Harry Potter 6','3'),
('Harry Potter 7','3'),
('Night of the Living Dummy','2'),
('The Haunted Mask','2'),
('Say Cheese and Die','2'),
('The Lost Tribe','3'),
('The Hobbit','2'),
('The Magpies','1'),
('A Song of Ice and Fire','2'),
('Black Nowhere','3'),
('American Gods','1'),
('Jurassic Park','2');

Create table borrower(
CardNo Int Primary Key not null Identity(2000,1),
Name varchar(max) not null,
Address varchar(max) not null,
Phone varchar(max) not null
);

Insert into borrower
(Name,Address,Phone)
Values
('Steve','1020 Sunset Ave, Columbia OH 78458','420-888-5845'),
('Dave','5874 Snaking Rd, Adventure Peaks WI 25412 ','456-789-1112'),
('Bob','987 Omicron St, Honolulu HA','321-654-987'),
('Elizabeth','465 Morrison rd, Lakewood CO 80227','789-123-0025'),
('Bernie','1600 Pennsylvania Ave, Washington DC 78912','147-258-369'),
('Natasha','454 Broken Dreams Blvd, Hope Alaska 85214','555-555-5555'),
('Wendy','420 Electric Ave, Stevins Ok 79521','420-420-6969'),
('Sam','89 Long Ave, Shire WA 46521','784-568-1285'),
('Frodo','96 Long Ave, Shire WA 46521','585-285-5594'),
('Bilbo','100 Acre Dr, Woods CO 85545,','555-556-5556'),
('Gandalf','2000 Tolkien Ave, Mordor Mi 74125','454-455-9865');

create table book_copies(
BookId Int not null foreign Key References BOOKS(BookId),
BranchId Int not null foreign Key References Library_Branch(BranchId),
Number_Of_Copies Int not null
);
Insert into book_copies
(BookId, BranchId, Number_Of_Copies)
Values
('1','1','17'),
('1','2','2'),
('1','3','3'),
('1','4','5'),

('2','1','5'),
('2','2','5'),
('2','3','5'),
('2','4','5'),

('3','1','16'),
('3','2','4'),
('3','3','8'),
('3','4','10'),

('4','1','17'),
('4','2','5'),
('4','3','9'),
('4','4','4'),

('5','1','10'),
('5','2','19'),
('5','3','5'),
('5','4','4'),

('6','1','14'),
('6','2','2'),
('6','3','8'),
('6','4','6'),

('7','1','19'),
('7','2','7'),
('7','3','2'),
('7','4','8'),

('8','1','18'),
('8','2','6'),
('8','3','6'),
('8','4','9'),

('9','1','17'),
('9','2','5'),
('9','3','8'),
('9','4','4'),

('10','1','16'),
('10','2','6'),
('10','3','4'),
('10','4','8'),

('11','1','4'),
('11','2','5'),
('11','3','9'),
('11','4','19'),

('12','1','14'),
('12','2','6'),
('12','3','8'),
('12','4','4'),

('13','1','8'),
('13','2','7'),
('13','3','5'),
('13','4','6'),

('14','1','10'),
('14','2','11'),
('14','3','3'),
('14','4','9'),

('15','1','19'),
('15','2','9'),
('15','3','7'),
('15','4','3'),

('16','1','15'),
('16','2','11'),
('16','3','9'),
('16','4','4'),

('17','1','3'),
('17','2','4'),
('17','3','7'),
('17','4','18'),

('18','1','4'),
('18','2','4'),
('18','3','4'),
('18','4','4'),


('19','1','3'),
('19','2','3'),
('19','3','3'),
('19','4','3'),

('20','1','14'),
('20','2','12'),
('20','3','11'),
('20','4','10'),

('21','1','7'),
('21','2','12'),
('21','3','4'),
('21','4','6'),

('22','1','5'),
('22','2','5'),
('22','3','5'),
('22','4','5'),

('23','1','4'),
('23','2','3'),
('23','3','3'),
('23','4','4'),

('24','1','10'),
('24','2','5'),
('24','3','6'),
('24','4','7')




Create table book_loans(
BookId Int not null Foreign Key References Books(BookId),
BranchId Int not null Foreign Key References Library_Branch(BranchId),
CardNo Int not null Foreign Key References Borrower(CardNo),
DateOut Date,
DateDue Date,
);

Insert into book_loans
(BookId,BranchId, CardNo, DateOut, DateDue)
Values
('1','4','2000','07/07/2019','08/07/2019'),
('4','2','2006','12/08/2019','01/08/2020'),
('22','1','2008','08/19/2019','09/18/2019'),
('13','3','2000','04/20/2019','05/20/2019'),
('3','2','2003','04/22/2019','05/22/2019'),
('16','3','2001','05/17/2019','06/17/2019'),
('9','1','2002','09/05/2019','10/05/2019'),
('4','4','2007','01/12/2019','02/12/2019'),
('1','1','2005','03/15/2019','04/15/2020'),
('5','3','2004','05/13/2019','06/15/2019'),
('3','4','2009','06/19/2019','07/19/2019'),
('19','2','2000','07/24/2019','08/24/2019'),
('21','4','2000','10/20/2019','11/20/2019'),
('17','2','2006','09/09/2019','10/09/2019'),
('11','1','2008','05/06/2019','06/06/2019'),
('3','3','2000','11/11/2019','12/11/2019'),
('7','2','2003','04/21/2019','05/21/2019'),
('21','3','2001','12/25/2019','01/25/2020'),
('5','1','2002','01/01/2019','02/01/2019'),
('14','4','2007','02/14/2019','03/14/2019'),
('16','1','2005','03/14/2019','04/14/2019'),
('20','3','2004','06/09/2019','07/09/2019'),
('24','4','2009','10/10/2019','11/10/2019'),
('23','2','2000','12/12/2019','01/12/2020'),
('10','4','2000','08/08/2019','09/08/2019'),
('4','2','2006','04/16/2019','05/16/2019'),
('1','1','2008','03/01/2019','04/01/2019'),
('2','3','2000','09/30/2019','10/30/2019'),
('2','2','2003','08/26/2019','09/26/2019'),
('6','3','2001','12/05/2019','01/05/2020'),
('6','1','2002','06/12/2019','07/12/2019'),
('7','4','2007','08/11/2019','09/11/2019'),
('9','1','2005','02/18/2019','03/18/2019'),
('12','3','2004','04/05/2019','05/05/2019'),
('8','4','2009','05/20/2019','06/20/2019'),
('1','2','2000','02/20/2019','02/20/2019'),
('1','4','2000','12/20/2019','01/20/2020'),
('3','2','2006','11/19/2019','12/19/2019'),
('1','1','2008','10/22/2019','11/22/2019'),
('3','3','2000','10/23/2019','11/23/2019'),
('4','2','2003','04/26/2019','05/26/2019'),
('6','3','2001','08/07/2019','09/07/2019'),
('9','1','2002','07/08/2019','08/08/2019'),
('3','4','2007','02/19/2019','03/19/2019'),
('1','1','2005','09/16/2019','10/16/2019'),
('10','3','2004','08/08/2019','09/08/2019'),
('11','4','2009','01/09/2019','02/09/2019'),
('1','2','2000','07/07/2019','08/07/2019'),
('15','4','2009','06/06/2019','07/06/2019'),
('1','3','2000','04/04/2019','05/04/2019')

Select* from book_authors
Select* from book_copies
select* from book_loans
select* from books
select* from borrower
select* from Library_branch
select* from Publisher

--1.) How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
GO
Create Procedure drill_1
As
Select Title, Number_Of_Copies From book_copies
join books on book_copies.BookId = books.BookId
join Library_branch on Library_branch.BranchID = book_copies.BranchId
where branchName = 'Sharpstown' and Title = 'The Lost Tribe'
GO;
exec drill_1
--2.) How many copies of the book titled "The Lost Tribe" are owned by each library branch?
GO
Create Procedure drill_2
As
Select BranchName, Number_Of_Copies from Library_branch
join book_copies on Library_branch.BranchID = book_copies.BranchId
join books on book_copies.BookId = books.BookId
where Title = 'The Lost Tribe'
GO;
exec drill_2
--3.) Retrieve the names of all borrowers who do not have any books checked out.

Create Procedure drill_3
As
Select Name
from borrower
Where CardNo Not in (Select CardNo From book_loans);

--4.) For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.
GO
Create Procedure drill_4
As
Select b.title,
br.Name, 
br.Address
From book_loans bl,
books b,
borrower br,
Library_branch lb
Where bl.BookId = b.BookId
and bl.BranchId = lb.BranchID
and bl.CardNo = br.CardNo
and lb.BranchName = 'Sharpstown'
and bl.DateDue = '04/15/2020'
Go;
--5.) For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
Go
Create Procedure drill_5
As
Select Lb.BranchName,
COUNT(bl.bookId)
From Library_branch Lb,
book_loans bl
Where bl.BranchId = lb.BranchID
Group By lb.BranchName

Go;
--6.) Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out.
Go
Create Procedure drill_6
As
Select br.Name, 
br.Address,
Count(bl.bookId)
From borrower br,
book_loans bl
Where br.CardNo = bl.CardNo
Group By br.Name,
br.Address
Having Count(bl.bookId) > 5
Go;
--7.) For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies
--owned by the library branch whose name is "Central".
Go
Create Procedure drill_7
As
Select b.title,
bc.Number_Of_Copies
From books b,
book_copies bc,
book_authors ba,
Library_branch lb
where bc.BookId = b.BookId
and bc.branchId = lb.branchId
and ba.BookId = b.BookId
and ba.AuthorName = 'Stephen King'
and lb.BranchName = 'Central'

Go;