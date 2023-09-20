create procedure sp_GetPermissions
as
begin
	set nocount on;
	select *
	from Permissions;

	return 0;
end