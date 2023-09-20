create procedure sp_DeleteManufacturers
	@ID int
as 
begin
	set nocount on;
	
	update Manufacturers
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end