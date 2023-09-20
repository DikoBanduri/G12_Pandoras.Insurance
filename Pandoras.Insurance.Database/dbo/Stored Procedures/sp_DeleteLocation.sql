create procedure sp_DeleteLocation
	@ID int
as
begin
	set nocount on;
	
	update Locations
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end