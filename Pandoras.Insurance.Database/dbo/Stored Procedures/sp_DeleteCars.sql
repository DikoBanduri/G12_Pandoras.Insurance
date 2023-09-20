create procedure sp_DeleteCars
    @ID int
as
begin
	set nocount on;

	update Cars
	set IsDeleted = 1
	where ID = @ID;

	return 0;
end