create procedure sp_GetPaymentScheduleByID 
@ID int 
as 
begin 
	set nocount on;
	select 
		PaymentSchedules.ScheduledPaymentDate, 
		PaymentSchedules.PolicyID
	from PaymentSchedules
	where ID = @ID;

	return 0;
end