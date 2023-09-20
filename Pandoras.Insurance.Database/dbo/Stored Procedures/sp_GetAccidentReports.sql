create procedure sp_GetAccidentReports
as
begin
	set nocount on;
	select *
	from AccidentReports
	
	return 0;
end