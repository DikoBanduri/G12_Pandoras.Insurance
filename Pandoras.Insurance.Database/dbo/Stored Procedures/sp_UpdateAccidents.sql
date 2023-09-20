create procedure sp_UpdateAccidents
	@ID int,
	@Type nvarchar(50),
	@Date datetime,
	@AccidentLocation nvarchar(100),
	@InvolvedVehicles int,
	@Description nvarchar(500)
as
begin
	set nocount on;

	update Accidents
	set Type = @Type,
	    Date = @Date,
	    AccidentLocation = @AccidentLocation,
	    InvolvedVehicles = @InvolvedVehicles,
	    Description = @Description
	where ID = @ID;

	return 0;
end