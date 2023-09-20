create procedure sp_UpdateCars
	@ID int,
	@ModelID int,
	@CategoryID int,
	@LicensePlate nvarchar(20),
	@Vin char(17),
	@ProductionDate date,
	@PassportNumber varchar(20),
	@EngineSize varchar(20),
	@Mileage varchar(20),
	@Description nvarchar(500)
as
begin
	set nocount on;

	update Cars
	set ModelID = @ModelID,
	    CategoryID = @CategoryID,
	    LicensePlate = @LicensePlate,
	    Vin = @Vin,
		ProductionDate = @ProductionDate,
	    PassportNumber = @PassportNumber,
	    EngineSize = @EngineSize,
	    Mileage = @Mileage,
	    Description = @Description
	where ID = @ID

	return 0;
end