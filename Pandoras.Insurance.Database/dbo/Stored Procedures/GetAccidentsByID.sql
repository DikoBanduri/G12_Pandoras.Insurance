create procedure GetAccidentsByID
@ID int
as
begin
	set nocount on;
	select Accidents.Type,
		   Accidents.Date,
		   Accidents.AccidentLocation,
		   Accidents.InvolvedVehicles,
		   Accidents.Description
	from Accidents
	where ID = @ID;

	return 0;
end