create table CustomerCredentials
(
   	    CustomerID int primary key identity (1, 1),
    	Username nvarchar(50) not null unique,
    	[Password] nvarchar(100) not null,
    	SecurityQuestion nvarchar(100) not null,
    	SecurityAnswer nvarchar(100) not null,
    	CancelDate date default (getdate()),
    	CreateDate date not null default(getdate()),
	    IsDeleted bit not null default(0),
    	foreign key(CustomerID) references Customers (ID)
)