create procedure sp_UpdateClaims
	@ID int,
	@PolicyID int,
	@AccidentReportID int,
	@Status bit,
	@Date datetime,
	@Amount decimal(10, 2),
	@Description nvarchar(500)
as
begin
    set nocount on;

    update Claims
    set PolicyID = @PolicyID,
		AccidentReportID = @AccidentReportID,
		Amount = @Amount,
		Status = @Status,
		Date = @Date,
		Description = @Description
    where ID = @ID;

    return 0;
end