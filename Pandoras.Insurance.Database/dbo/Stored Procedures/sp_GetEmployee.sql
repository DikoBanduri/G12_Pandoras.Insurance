create procedure sp_GetEmployee
as
begin
	set nocount on;
	select 
		Employees.RoleID,
		Employees.FirstName, 
		Employees.LastName, 
		Employees.PersonalNumber,
		Employees.WorkPhoneNumber,
		Employees.HomePhoneNumber, 
		Employees.EmailAddress, 
		Employees.PersonalEmailAddress,
		Employees.PrivateAddress
	from Employees

	return 0;
end