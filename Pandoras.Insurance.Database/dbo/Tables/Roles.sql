create table Roles
(
	ID int primary key identity (1, 1),
	[Name] nvarchar(30) not null unique,
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0)
)