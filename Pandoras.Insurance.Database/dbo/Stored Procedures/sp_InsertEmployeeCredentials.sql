create procedure sp_InsertEmployeeCredentials 
	@ID int,
	@UserName nvarchar(30),
	@Password nvarchar(50)
as
begin
	set nocount on;
	insert into EmployeeCredentials(Username, [Password])
	values (@UserName, @Password)

	set @ID = @@IDENTITY;
	return 0;
end