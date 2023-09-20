create procedure sp_DeleteCustomer
	@ID int
as
begin
	set nocount on;
	
	update Customers
	set IsDeleted = 1
	where ID = @ID;
	
	return 0;
end