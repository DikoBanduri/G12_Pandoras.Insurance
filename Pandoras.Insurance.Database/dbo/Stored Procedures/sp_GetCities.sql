create procedure sp_GetCities
as
begin
	set nocount on;
	select *
	from Cities;

	return 0;
end