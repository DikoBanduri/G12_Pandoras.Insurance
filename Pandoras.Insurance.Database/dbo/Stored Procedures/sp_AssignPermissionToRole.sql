create procedure sp_AssignPermissionToRole
	@PermissionID int,
	@RoleID int
as
begin
	set nocount on;
	
	insert into RolesPermissions (PermissionID, RoleID)
	values (@PermissionID, @RoleID);
		
	return 0;
end