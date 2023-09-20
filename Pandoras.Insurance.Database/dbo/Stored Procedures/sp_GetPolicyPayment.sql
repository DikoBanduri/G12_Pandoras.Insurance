create procedure sp_GetPolicyPayment
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
	
	return 0;
end