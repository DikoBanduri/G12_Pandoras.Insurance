create table EmployeeCredentials
(
	EmployeeID int primary key identity (1, 1),
	Username nvarchar(50) not null unique,
    [Password] nvarchar(100) not null,
	IsActive bit default(0) not null,
	foreign key (EmployeeID) references Employees (ID)
)