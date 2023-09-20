create procedure sp_InsertPolicy
    @CarID int,
    @EmployeeID int,
    @CustomerID int,
    @PolicyTypeID int,
    @Number varchar (30),
    @PremiumAmount decimal (10, 2),
    @CoverageLimit decimal (10, 2),
    @StartDate date,
    @EndDate date,
    @ID int output
as
begin
    set nocount on;

    set @Number = LTRIM(RTRIM(@Number));

    insert into Policies(CarID, EmployeeID, CustomerID, PolicyTypeID, Number, PremiumAmount, CoverageLimit, StartDate, EndDate)
    values (@CarID, @EmployeeID, @CustomerID, @PolicyTypeID, @Number, @PremiumAmount, @CoverageLimit, @StartDate, @EndDate);
    
    set @ID = @@IDENTITY;

    return 0;
end