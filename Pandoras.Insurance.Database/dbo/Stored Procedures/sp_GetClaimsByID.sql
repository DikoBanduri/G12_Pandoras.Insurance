create procedure sp_GetClaimsByID
@ID int
as
begin
	set nocount on;
	select Claims.PolicyID,
		   Claims.AccidentReportID,
		   Claims.Status,
		   Claims.Date,
		   Claims.Amount,
		   Claims.Description
	from Claims
	where ID = @ID;

	return 0;
end