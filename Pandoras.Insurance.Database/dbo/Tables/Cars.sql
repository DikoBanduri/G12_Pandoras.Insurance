create table Cars
(
	ID int primary key identity (1, 1),
	ModelID int,
	CategoryID int,
	LicensePlate nvarchar(20) not null unique,
	Vin char(17) not null,
	ProductionDate date not null,
	PassportNumber varchar(20) not null unique,
	EngineSize varchar(20) not null,
	Mileage varchar(20) not null,
	[Description] nvarchar(500),
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0),
	foreign key (ModelID) references Models (ID),
	foreign key (CategoryID) references Categories (ID)
)