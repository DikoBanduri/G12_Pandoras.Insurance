create procedure sp_DeleteEmployeeCredentials
	@ID int
as
begin
	set nocount on;
	update EmployeeCredentials
	set IsActive = 1
	where EmployeeID = @ID;

	return 0;
end