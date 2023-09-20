create procedure sp_GetCustomerCredentialsByID
@ID int
as
begin
	set nocount on;
	select 
		CustomerCredentials.Username,
		CustomerCredentials.[Password],
		CustomerCredentials.SecurityQuestion,
		CustomerCredentials.SecurityAnswer,
		CustomerCredentials.CreateDate,
		CustomerCredentials.CancelDate
	from CustomerCredentials
	where CustomerCredentials.CustomerID = @ID;

	return 0;

end