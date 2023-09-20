create procedure sp_UpdateEmployeeCredentials
	@UserName nvarchar(50),
	@PassWord nvarchar(50),
	@ID int
as
begin
	set nocount on;
	update EmployeeCredentials
	set Username = @UserName,
		[Password] = @PassWord
	where EmployeeID = @ID;

	return 0;
end