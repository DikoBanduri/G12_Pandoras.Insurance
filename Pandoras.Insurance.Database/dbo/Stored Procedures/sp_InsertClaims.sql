create procedure sp_InsertClaims
	@PolicyID int,
	@AccidentReportID int,
	@Status bit,
	@Date datetime,
	@Amount decimal(10, 2),
	@Description nvarchar(500),
	@ID int output
as
begin
    set nocount on;

    insert into Claims (PolicyID, AccidentReportID, Status, Date, Amount, Description)
    values(@PolicyID, @AccidentReportID, @Status, @Date, @Amount, @Description);

    set @ID = @@IDENTITY;

    return 0;
end