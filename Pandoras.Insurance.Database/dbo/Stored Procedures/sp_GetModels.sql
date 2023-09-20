create procedure sp_GetModels
as
begin
	set nocount on;
	select *
	from Models;

	return 0;
end