create procedure sp_DeleteCity
	@ID int
as
begin
	set nocount on;
	
	update Cities
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end