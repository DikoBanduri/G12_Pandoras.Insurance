create procedure sp_GetRegionByID 
@ID int 
as 
begin 
	set nocount on;
	select
		ID,
		Name,
		CreateDate,
		IsDeleted
	from Regions 
	where ID = @ID;

	return 0;
end