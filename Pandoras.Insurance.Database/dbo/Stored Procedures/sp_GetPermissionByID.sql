create procedure sp_GetPermissionByID
@ID int
as
begin
	set nocount on;
	select Permissions.Name, Permissions.Code
	from Permissions
	where ID = @ID;

	return 0;
end