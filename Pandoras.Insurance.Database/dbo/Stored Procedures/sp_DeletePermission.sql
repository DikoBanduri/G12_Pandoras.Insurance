create procedure sp_DeletePermission
	@ID int		
as
begin
	set nocount on;
	update [Permissions]
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end