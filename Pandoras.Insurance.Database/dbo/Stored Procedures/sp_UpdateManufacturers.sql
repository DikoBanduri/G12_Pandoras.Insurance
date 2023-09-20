create procedure sp_UpdateManufacturers
	@ID int,
	@Name nvarchar (50),
	@Country nvarchar (50),
	@Description nvarchar (500)
as 
begin
	set nocount on;

	update Manufacturers
	set Name = @Name,
        Country = @Country,
        Description = @Description
	where ID = @ID;
	
	return 0;
end