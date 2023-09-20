create procedure sp_GetCustomers
as
begin
	set nocount on;
	select *
	from Customers;

	return 0;
end