create procedure sp_GetRoleByID
@ID int
as
begin
	set nocount on;
	select Roles.Name
	from Roles
	where ID = @ID;

	return 0;
end