create procedure sp_DeleteEmployee
	@ID int		
as
begin
	set nocount on;
	update Employees
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end