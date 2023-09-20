create procedure sp_GetEmployeeCredentials
as 
begin 
	set nocount on;
	select EmployeeCredentials.Username, EmployeeCredentials.[Password]
	from EmployeeCredentials
	
	return 0;
end