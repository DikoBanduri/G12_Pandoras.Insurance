create procedure sp_GetRolePermissionsByID
@ID int
as
begin
	set nocount on;
	select RolesPermissions.RoleID, RolesPermissions.PermissionID
	from RolesPermissions
	where RolesPErmissions.RoleID = @ID;

	return 0;
end