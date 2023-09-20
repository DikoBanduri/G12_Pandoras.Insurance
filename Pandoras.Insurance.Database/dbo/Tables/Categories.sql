create table Categories
(
	ID int primary key identity (1, 1),
	Code varchar(10) not null unique,
	[Name] nvarchar(50) not null,
	[Description] nvarchar(500),
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0) 
)