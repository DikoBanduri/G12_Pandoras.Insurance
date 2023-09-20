create table AccidentReports
(
	ID int primary key identity (1, 1),
	AccidentID int not null,	
	PoliceReport nvarchar(max) not null,
	InspectionReport nvarchar(max) not null,
	AccidentCost decimal(10, 2) not null,
	Witnesses nvarchar(max),
	[Description] nvarchar(max),
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0)
	foreign key (AccidentID) references Accidents (ID)
)