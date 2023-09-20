create table Manufacturers
(
	ID int primary key identity (1, 1),
	[Name] nvarchar(50) not null,
	Country nvarchar(50),
	[Description] nvarchar(500),
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0) 
)