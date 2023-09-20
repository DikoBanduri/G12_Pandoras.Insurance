create table Models
(
	ID int primary key identity (1, 1),
	ManufacturerID int,
	[Name] nvarchar(50) not null,
	[Description] nvarchar(500),
	Picture varbinary(max),
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0),
	foreign key (ManufacturerID) references Manufacturers (ID)
)