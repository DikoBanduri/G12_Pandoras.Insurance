create procedure sp_GetAccidentReportByID
@ID int
as
begin
	set nocount on;
	select AccidentReports.AccidentID,
		   AccidentReports.PoliceReport,
		   AccidentReports.InspectionReport,
		   AccidentReports.AccidentCost,
		   AccidentReports.Witnesses,
		   AccidentReports.Description
	from AccidentReports
	where ID = @ID;	
	
	return 0;
end