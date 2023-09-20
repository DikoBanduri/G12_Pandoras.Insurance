create procedure sp_GetEmployeeCredentialsByID
@ID int 
as 
begin 
	set nocount on;
	select EmployeeCredentials.Username, EmployeeCredentials.[Password]
	from EmployeeCredentials
	where EmployeeID = @ID;

	return 0;
end