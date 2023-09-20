create procedure sp_UpdatePolicy
    @ID int,
    @CarID int,
    @EmployeeID int,
    @CustomerID int,
    @PolicyTypeID int,
    @Number varchar (30),
    @PremiumAmount decimal (10, 2),
    @CoverageLimit decimal (10, 2),
    @StartDate date,
    @EndDate date
as
begin
    set nocount on;

    set @Number = LTRIM(RTRIM(@Number));

    update Policies
    set CarID = @CarID,
        EmployeeID = @EmployeeID,
        CustomerID = @CustomerID,
        PolicyTypeID = @PolicyTypeID,
        Number = @Number,
        PremiumAmount = @PremiumAmount,
        CoverageLimit = @CoverageLimit,
        StartDate = @StartDate,
        EndDate = @EndDate
    where ID = @ID

    return 0;
end