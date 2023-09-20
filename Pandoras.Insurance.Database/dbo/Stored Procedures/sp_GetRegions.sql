create procedure sp_GetRegions
as
begin
	set nocount on;
	select *
	from Regions;
	
	return 0;
end