create procedure sp_GetLocationByID 
@ID int 
as 
begin 
	set nocount on;
	select 
		Locations.Name, 
		Locations.Description,
		Locations.Longitude,
		Locations.Latitude,
		Locations.CityID
	from Locations 
	where ID = @ID;

	return 0;
end