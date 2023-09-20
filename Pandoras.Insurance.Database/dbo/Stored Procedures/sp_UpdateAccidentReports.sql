create procedure sp_UpdateAccidentReports
	@ID int,
	@AccidentID int,
	@PoliceReport nvarchar (max),
	@InspectionReport nvarchar (max),
	@AccidentCost decimal (10, 2),
	@Witnesses nvarchar (max),
	@Description nvarchar (500)
as 
begin
	set nocount on;

	update AccidentReports
	set AccidentID = @AccidentID,
        PoliceReport = @PoliceReport,
        InspectionReport = @InspectionReport,
        AccidentCost = @AccidentCost,
        Witnesses = @Witnesses,
        Description = @Description
	where ID = @ID;
	
	return 0;
end