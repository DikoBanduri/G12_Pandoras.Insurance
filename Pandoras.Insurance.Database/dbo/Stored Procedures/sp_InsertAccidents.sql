create procedure sp_InsertAccidents
	@Type nvarchar(50),
	@Date datetime,
	@AccidentLocation nvarchar(100),
	@InvolvedVehicles int,
	@Description nvarchar(500),
	@ID int output
as
begin
	set nocount on;

	insert into Accidents (Type, Date, AccidentLocation, InvolvedVehicles, Description)
	values (@Type, @Date, @AccidentLocation, @InvolvedVehicles, @Description);

	set @ID = @@IDENTITY;
        
	return 0;
end