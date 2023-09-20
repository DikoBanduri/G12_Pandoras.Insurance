create procedure sp_InsertRole
	@Name nvarchar(50),
	@ID int output
as 
begin
	set nocount on;

	insert into Roles (Name)
	values (@Name);
	
	set @ID = @@IDENTITY;

	return 0;
end