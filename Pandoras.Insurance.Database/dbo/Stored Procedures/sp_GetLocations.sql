create procedure sp_GetLocations
as
begin
	set nocount on;
	select *
	from Locations;

	return 0;
end