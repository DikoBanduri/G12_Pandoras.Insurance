create procedure sp_UpdateEmployee
	@ID int,
	@FirstName nvarchar(50),
	@LastName nvarchar(20),
	@WorkPhoneNumber varchar(15),
	@HomePhoneNumber varchar(15),
	@EmailAddress varchar(50),
	@PersonalEmailAddress varchar(50),
	@PrivateAddress varchar(40)
as 
begin
	set nocount on;
	update Employees
		set FirstName = @FirstName,
			LastName = @LastName,
			WorkPhoneNumber = @WorkPhoneNumber,
			HomePhoneNumber = @HomePhoneNumber,
			EmailAddress = @EmailAddress,
			PersonalEmailAddress = @PersonalEmailAddress,
			PrivateAddress = @PrivateAddress
		where ID = @ID
	
	return 0;
end