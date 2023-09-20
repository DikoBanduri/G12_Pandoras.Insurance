create procedure sp_GetPaymentSchedules
as
begin
	set nocount on;
	select *
	from PaymentSchedules;

	return 0;
end