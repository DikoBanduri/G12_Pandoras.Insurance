create procedure sp_GetManufacturerByID
@ID int
as
begin
	select Manufacturers.Name,
		   Manufacturers.Country,
		   Manufacturers.Description
	from Manufacturers
	where ID = @ID;
end