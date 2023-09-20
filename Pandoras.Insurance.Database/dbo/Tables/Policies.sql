create table Policies
(
	ID int primary key identity (1, 1),
	CarID int not null,
	EmployeeID int not null,
	CustomerID int not null,
	PolicyTypeID int not null,
	Number varchar(30) unique not null,
	PremiumAmount decimal(10, 2) not null,
	CoverageLimit decimal(10, 2) not null,
	StartDate date not null,
	EndDate date not null,
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0), 
	foreign key (CarID) references Cars (ID),
	foreign key (EmployeeID) references Employees (ID),
	foreign key (CustomerID) references Customers (ID),
	foreign key (PolicyTypeID) references PolicyTypes (ID) 
)