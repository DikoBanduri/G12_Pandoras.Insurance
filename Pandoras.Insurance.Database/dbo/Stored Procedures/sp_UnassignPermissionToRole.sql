create procedure sp_UnassignPermissionToRole
	@PermissionID int,
	@RoleID int
as
begin
	set nocount on;
	
	delete from RolesPermissions 
	where PermissionID = @PermissionID and RoleID = @RoleID
		
	return 0;
end