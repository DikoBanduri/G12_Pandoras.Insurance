create procedure sp_GetModelByID
@ID int
as
begin
	set nocount on;
	select Models.ManufacturerID,
		Models.Name,
		Models.Description,
		Models.Picture

	from Models
	where ID = @ID;

	return 0;
end