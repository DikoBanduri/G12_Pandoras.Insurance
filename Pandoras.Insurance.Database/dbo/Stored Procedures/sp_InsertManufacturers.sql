create procedure sp_InsertManufacturers
	@Name nvarchar (50),
	@Country nvarchar (50),
	@Description nvarchar (500),
	@ID int output
as 
begin
	set nocount on;

	insert into Manufacturers (Country, Name, Description)
	values (@Country, @Name, @Description);
	
	set @ID = @@IDENTITY;

	return 0;
end