create procedure sp_UpdateLocation
    @ID int,
    @CityID int,
    @Name nvarchar(150),
    @Description nvarchar(1000),
    @Longitude decimal(9, 6),
    @Latitude decimal(9, 6)
as 
begin
    set nocount on;

    set @Name = LTRIM(RTRIM(@Name));

    update Locations
    set CityID = @CityID,
        Name = @Name,
        Description = @Description,
        Longitude = @Longitude,
        Latitude = @Latitude
    where ID = @ID

    return 0;
end