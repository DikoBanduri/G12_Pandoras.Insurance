create procedure sp_DeletePolicyPayment
	@ID int
as
begin
	set nocount on;
	
	update PolicyPayments
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end