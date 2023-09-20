create procedure sp_GetPolicyPaymentByID 
@ID int 
as 
begin 
	set nocount on;
	select
		ID,
		Amount, 
		PaymentDate,
		PaymentScheduleID,
		CreateDate,
		IsDeleted
	from PolicyPayments
	where ID = @ID;

	return 0;
end