create procedure sp_GetCarByID
@ID int
as
begin
	set nocount on;
	select Cars.ModelID,
		   Cars.CategoryID,
		   Cars.LicensePlate,
		   Cars.Vin,
		   Cars.ProductionDate,
		   Cars.PassportNumber,
		   Cars.EngineSize,
		   Cars.Mileage,
		   Cars.Description
	from Cars
	where ID = @ID

	return 0;
end