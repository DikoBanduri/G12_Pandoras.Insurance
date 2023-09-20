create procedure sp_InsertPermission
	@Name nvarchar(50),
	@ID int output
as 
begin
	set nocount on;

	insert into [Permissions] (Name)
	values (@Name);
	
	set @ID = @@IDENTITY;

	return 0;
end