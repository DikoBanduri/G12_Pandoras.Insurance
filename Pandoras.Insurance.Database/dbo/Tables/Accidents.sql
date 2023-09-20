create table Accidents
(
	ID int primary key identity (1, 1),
	[Type] nvarchar(50) not null,
	[Date] datetime not null,
	AccidentLocation nvarchar(100) not null,
	InvolvedVehicles int not null,
	[Description] nvarchar(500),
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0)
)