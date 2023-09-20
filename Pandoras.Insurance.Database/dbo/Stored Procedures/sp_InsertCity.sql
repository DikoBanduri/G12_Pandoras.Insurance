create procedure sp_InsertCity
    @RegionID int,
    @Name nvarchar(150),
    @ID int output
as
begin
    set nocount on;

    set @Name = LTRIM(RTRIM(@Name));

    insert into Cities(RegionID, Name)
    values (@RegionID, @Name);

    set @ID = @@IDENTITY;

    return 0;
end