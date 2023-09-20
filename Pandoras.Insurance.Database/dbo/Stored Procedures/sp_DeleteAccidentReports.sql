create procedure sp_DeleteAccidentReports
	@ID int
as 
begin
	set nocount on;
	
	update AccidentReports
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end