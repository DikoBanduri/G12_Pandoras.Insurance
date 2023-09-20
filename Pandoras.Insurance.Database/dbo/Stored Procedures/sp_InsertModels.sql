create procedure sp_InsertModels
	@ManufacturerID int,
	@Name nvarchar (50),
	@Description nvarchar (500),
	@Picture varbinary (max),
	@ID int output
as 
begin
	set nocount on;

	insert into Models (ManufacturerID, Name, Description, Picture)
	values (@ManufacturerID, @Name, @Description, @Picture);
	
	set @ID = @@IDENTITY;

	return 0;
end