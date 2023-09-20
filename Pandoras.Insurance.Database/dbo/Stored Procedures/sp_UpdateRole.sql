create procedure sp_UpdateRole
	@Name nvarchar(50),
	@ID int
as
begin
	set nocount on;
	update Roles
	set Name = @Name
	where ID = @ID;

	return 0;
end