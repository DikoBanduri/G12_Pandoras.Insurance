create table PolicyPayments
(
	ID int primary key identity (1, 1),
	PaymentScheduleID int not null,
	Amount decimal(10, 2) not null,
	PaymentDate datetime not null,
	CreateDate date not null default(getdate()),
	IsDeleted bit not null default(0),
	foreign key (PaymentScheduleID) references PaymentSchedules (ID)
)