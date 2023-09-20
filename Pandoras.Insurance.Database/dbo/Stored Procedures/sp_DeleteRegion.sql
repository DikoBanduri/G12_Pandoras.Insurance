create procedure sp_DeleteRegion
	@ID int
as 
begin
	set nocount on;
	
	update Regions
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end