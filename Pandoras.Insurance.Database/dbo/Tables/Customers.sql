create table Customers
(
	ID int primary key identity (1, 1),
	CityID int not null,
	FirstName nvarchar(30) not null,
	LastName nvarchar(30) not null,
	BirthDate datetime not null,
	PersonalNumber char(11) not null,
	PhoneNumber varchar(20) not null,
	EmergencyNumber varchar(20),
	EmailAddress varchar(50), 
	AddressLine1 nvarchar(250) not null,
	AddressLine2 nvarchar(250),
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0),
	foreign key (CityID) references Cities (ID) 
)