create table Employees
(
	ID int primary key identity (1, 1),
	RoleID int not null,
	FirstName nvarchar(20) not null,
	LastName nvarchar(20) not null,
	PersonalNumber varchar(15) not null,
	WorkPhoneNumber varchar(15) not null,
	HomePhoneNumber varchar(15) null,
	EmailAddress varchar(50) not null,
	PersonalEmailAddress varchar(50) null,
	PrivateAddress varchar(40) not null,
	HireDate date,
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0),
	foreign key (RoleID) references Roles (ID)
)