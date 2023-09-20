create procedure sp_InsertCars
    @ModelID int,
    @CategoryID int,
    @LicensePlate nvarchar(20),
    @Vin char(17),
    @ProductionDate date,
    @PassportNumber varchar(20),
    @EngineSize varchar(20),
    @Mileage varchar(20),
    @Description nvarchar(500),
    @ID int output
as
begin
    set nocount on;

    insert into Cars(ModelID, CategoryID, LicensePlate, Vin, ProductionDate, PassportNumber, EngineSize, Mileage, Description)
    values(@ModelID, @CategoryID, @LicensePlate, @Vin, @ProductionDate, @PassportNumber, @EngineSize, @Mileage, @Description);

    set @ID = @@IDENTITY;

    return 0;
end