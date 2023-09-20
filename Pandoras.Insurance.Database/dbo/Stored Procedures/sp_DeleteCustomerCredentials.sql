create procedure sp_DeleteCustomerCredentials
@ID int
as
begin
	set nocount on;
	update CustomerCredentials
	set IsDeleted = 1
	where CustomerID = @ID;

	return 0;
end