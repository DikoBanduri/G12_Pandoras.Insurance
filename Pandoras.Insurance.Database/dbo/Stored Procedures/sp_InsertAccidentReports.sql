create procedure sp_InsertAccidentReports
	@AccidentID int,
	@PoliceReport nvarchar (max),
	@InspectionReport nvarchar (max),
	@AccidentCost decimal (10, 2),
	@Witnesses nvarchar (max),
	@Description nvarchar (500),
	@ID int output
as 
begin
	set nocount on;

	insert into AccidentReports (AccidentID, PoliceReport, InspectionReport, AccidentCost, Witnesses, Description)
	values (@AccidentID, @PoliceReport, @InspectionReport, @AccidentCost, @Witnesses, @Description);
	
	set @ID = @@IDENTITY;

	return 0;
end