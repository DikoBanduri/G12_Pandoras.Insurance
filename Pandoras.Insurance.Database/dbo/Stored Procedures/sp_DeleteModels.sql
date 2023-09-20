create procedure sp_DeleteModels
	@ID int
as 
begin
	set nocount on;
	
	update Models
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end