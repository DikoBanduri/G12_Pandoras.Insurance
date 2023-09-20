create procedure sp_DeleteCategories
	@ID int
as 
begin
	set nocount on;
	
	update Categories
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end