create procedure sp_GetCityByID 
@ID int 
as 
begin 
	select 	Cities.Name
	from Cities 
	where ID = @ID;

	return 0;
end