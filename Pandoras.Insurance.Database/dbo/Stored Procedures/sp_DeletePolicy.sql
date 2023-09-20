create procedure sp_DeletePolicy
	@ID int
as
begin
	set nocount on;
	
	update Policies
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end