create procedure sp_GetCustomerByID 
@ID int 
as 
begin 
	set nocount on;
	select 
		Customers.CityID,
		Customers.FirstName,
		Customers.LastName,
		Customers.BirthDate,
		Customers.PersonalNumber,
		Customers.PhoneNumber, 
		Customers.EmergencyNumber,
		Customers.AddressLine1,
		Customers.AddressLine2
	from Customers 
	where ID = @ID;

	return 0;
end