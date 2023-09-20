create table Cities
(
	ID int primary key identity (1, 1),
	RegionID int not null,
	Name nvarchar(150) not null,
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0),
	foreign key (RegionID) references Regions (ID)
)