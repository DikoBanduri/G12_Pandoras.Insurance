create table PolicyTypes
(
	ID int primary key identity (1, 1),
	Name nvarchar(30) not null,
	IsDeleted bit not null default(0),
	CreateDate date not null default(getdate())
)