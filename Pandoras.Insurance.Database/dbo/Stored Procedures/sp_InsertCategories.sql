create procedure sp_InsertCategories
	@Code varchar (10),
	@Name nvarchar (50),
	@Description nvarchar (500),
	@ID int output
as 
begin
	set nocount on;

	insert into Categories (Code, Name, Description)
	values (@Code, @Name, @Description);
	
	set @ID = @@IDENTITY;

	return 0;
end