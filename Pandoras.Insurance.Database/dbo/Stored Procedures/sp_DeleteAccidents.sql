create procedure sp_DeleteAccidents
	@ID int
as
begin
	set nocount on;

	update Accidents
	set IsDeleted = 1
	where ID = @ID;

	return 0;
end