create table [Permissions]
(
	ID int primary key identity (1, 1),
	Code int not null unique,
	Name nvarchar(50) not null unique,
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0)
)