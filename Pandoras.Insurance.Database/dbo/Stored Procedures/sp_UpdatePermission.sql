create procedure sp_UpdatePermission
	@Name nvarchar(50),
	@ID int
as
begin
	set nocount on;
	update [Permissions]
	set Name = @Name
	where ID = @ID;

	return 0;
end