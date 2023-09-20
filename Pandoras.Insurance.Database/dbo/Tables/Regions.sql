create table Regions
(
	ID int primary key identity (1, 1), 
	[Name] nvarchar(150) not null,
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0)
)