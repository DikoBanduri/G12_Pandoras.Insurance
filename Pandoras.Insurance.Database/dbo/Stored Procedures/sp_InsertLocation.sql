create procedure sp_InsertLocation
    @CityID int,
    @Name nvarchar(150),
    @Description nvarchar(1000),
    @Longitude decimal(9, 6),
    @Latitude decimal(9, 6),
    @ID int output
as
begin
    set nocount on;

    set @Name = LTRIM(RTRIM(@Name));

    insert into Locations(CityID, Name, Description, Longitude, Latitude)
    values (@CityID, @Name, @Description, @Longitude, @Latitude);
    
    set @ID = @@IDENTITY;

    return 0;
end