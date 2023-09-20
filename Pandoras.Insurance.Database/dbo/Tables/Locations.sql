create table Locations
(
	ID int primary key identity (1, 1),
	CityID int not null,
	[Name] nvarchar(150) not null,
	[Description] nvarchar(1000),
	Longitude DECIMAL(9, 6),
	Latitude DECIMAL(9, 6),
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0),
	foreign key (CityID) references Cities (ID)
)