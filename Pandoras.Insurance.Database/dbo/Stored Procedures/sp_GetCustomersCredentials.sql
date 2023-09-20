create procedure sp_GetCustomersCredentials
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

	return 0;

end