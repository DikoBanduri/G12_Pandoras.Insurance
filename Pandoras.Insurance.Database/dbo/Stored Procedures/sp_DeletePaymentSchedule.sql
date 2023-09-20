create procedure sp_DeletePaymentSchedule
	@ID int
as
begin
	set nocount on;
	
	update PaymentSchedules
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end