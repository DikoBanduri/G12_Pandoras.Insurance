create procedure sp_UpdateCustomer
    @ID int,
    @CityID int,
    @FirstName nvarchar (30),
    @LastName nvarchar (30),
    @BirthDate datetime,
    @PersonalNumber char (11),
    @PhoneNumber varchar (20),
    @EmergencyNumber varchar (20),
    @EmailAddress varchar (50),
    @AddressLine1 nvarchar (250),
    @AddressLine2 nvarchar (250)
as
begin
    set nocount on;

    set @FirstName = LTRIM(RTRIM(@FirstName));
    set @LastName = LTRIM(RTRIM(@LastName));
    set @PersonalNumber = LTRIM(RTRIM(@PersonalNumber));

    update Customers
    set CityID = @CityID,
        FirstName = @FirstName,
        LastName = @LastName,
        BirthDate = @BirthDate,
        PersonalNumber = @PersonalNumber,
        PhoneNumber = @PhoneNumber,
        EmergencyNumber = @EmergencyNumber,
        EmailAddress = @EmailAddress,
        AddressLine1 = @AddressLine1,
        AddressLine2 = @AddressLine2

    set @ID = @@IDENTITY;

    return 0;
end