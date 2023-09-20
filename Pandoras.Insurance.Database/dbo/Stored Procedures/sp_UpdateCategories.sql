create procedure sp_UpdateCategories
	@ID int,
	@Code varchar (10),
	@Name nvarchar (50),
	@Description nvarchar (500)
as 
begin
	set nocount on;

	update Categories
	set Code = @Code,
        Name = @Name,
        Description = @Description
	where ID = @ID;
	
	return 0;
end