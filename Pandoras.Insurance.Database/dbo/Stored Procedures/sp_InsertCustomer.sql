create procedure sp_InsertCustomer
    @CityID int,
    @FirstName nvarchar (30),
    @LastName nvarchar (30),
    @BirthDate datetime,
    @PersonalNumber char (11),
    @PhoneNumber varchar (20),
    @EmergencyNumber varchar (20),
    @EmailAddress varchar (50),
    @AddressLine1 nvarchar (250),
    @AddressLine2 nvarchar (250),
    @ID int output
as
begin
    set nocount on;

    set @FirstName = LTRIM(RTRIM(@FirstName));
    set @LastName = LTRIM(RTRIM(@LastName));
    set @PersonalNumber = LTRIM(RTRIM(@PersonalNumber));

    insert into Customers(CityID, FirstName, LastName, BirthDate, PersonalNumber, PhoneNumber, 
                          EmergencyNumber, EmailAddress, AddressLine1, AddressLine2)
    values (@CityID, @FirstName, @LastName, @BirthDate, @PersonalNumber, @PhoneNumber, 
            @EmergencyNumber, @EmailAddress, @AddressLine1, @AddressLine2);
    
    set @ID = @@IDENTITY;

    return 0;
end