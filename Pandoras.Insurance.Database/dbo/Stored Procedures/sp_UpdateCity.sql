create procedure sp_UpdateCity
    @ID int,
    @RegionID int,
    @Name nvarchar(150)

as 
begin
    set nocount on;

    set @Name = LTRIM(RTRIM(@Name));

    update Cities
    set RegionID = @RegionID,
        Name = @Name
    where ID = @ID;

    return 0;
end