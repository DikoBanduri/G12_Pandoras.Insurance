create procedure sp_UpdateModels
	@ID int,
	@ManufacturerID int,
	@Name nvarchar (50),
	@Description nvarchar (500),
	@Picture varbinary (max)
as 
begin
	set nocount on;

	update Models
	set ManufacturerID=@ManufacturerID,
	    Name = @Name,
	    Description = @Description,
	    Picture = @Picture
	where ID = @ID;
	
	return 0;
end