create procedure sp_DeletePermissionToRole
	@RoleID int
as
begin
	set nocount on;
	
	update [RolesPermissions]
	set IsDeleted = 1
	where RoleID = @RoleID
		
	return 0;
end