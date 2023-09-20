create procedure sp_DeleteRole
	@ID int		
as
begin
	set nocount on;
	update Roles
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end