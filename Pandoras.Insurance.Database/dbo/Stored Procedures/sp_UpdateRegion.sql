create procedure sp_UpdateRegion
	@ID int,
	@Name nvarchar(50)
as 
begin
	set nocount on;

	update Regions
	set Name = @Name
	where ID = @ID;
	
	return 0;
end