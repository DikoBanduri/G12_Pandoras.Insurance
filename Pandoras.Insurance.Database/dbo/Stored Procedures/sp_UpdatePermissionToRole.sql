create procedure sp_UpdatePermissionToRole
	@PermissionID int,
	@RoleID int
as
begin
	set nocount on;
	
	update RolesPermissions
	set PermissionID = @PermissionID
	where RoleID = @RoleID
		
	return 0;
end