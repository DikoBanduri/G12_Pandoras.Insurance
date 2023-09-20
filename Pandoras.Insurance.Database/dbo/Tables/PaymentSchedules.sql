create table PaymentSchedules
(
	ID int primary key identity (1, 1),
	PolicyID int not null,
	[ScheduledPaymentDate] datetime not null,
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0),
	foreign key (PolicyID) references Policies (ID)
)