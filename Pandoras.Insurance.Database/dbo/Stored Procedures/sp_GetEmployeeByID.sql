create procedure sp_GetEmployeeByID
@ID int
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
	where ID = @ID;

	return 0;
end