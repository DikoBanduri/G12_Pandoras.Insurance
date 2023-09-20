create procedure sp_InsertEmployee
	@ID int,
	@FirstName nvarchar(50),
	@LastName nvarchar(20),
	@PersonalID varchar(15),
	@WorkPhoneNumber varchar(15),
	@HomePhoneNumber varchar(15),
	@EmailAddress varchar(320),
	@PrivateAddress varchar(40)
as 
begin
	set nocount on;

	insert into Employees (FirstName, LastName, ID, WorkPhoneNumber, HomePhoneNumber, EmailAddress, PrivateAddress)
	values (@FirstName, @LastName, @PersonalID, @WorkPhoneNumber, @HomePhoneNumber, @EmailAddress, @PrivateAddress);
	
	set @ID = @@IDENTITY;

	return 0;
end