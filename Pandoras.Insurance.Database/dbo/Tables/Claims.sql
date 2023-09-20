create table Claims
(
	ID int primary key identity (1, 1),
	PolicyID int not null,
	AccidentReportID int not null,
	[Status] bit not null default(0),
	[Date] datetime not null default getdate(),
	Amount decimal(10, 2) not null,
	[Description] nvarchar(500),
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0),
	foreign key (AccidentReportID) references AccidentReports (ID),
	foreign key (PolicyID) references Policies (ID)
)