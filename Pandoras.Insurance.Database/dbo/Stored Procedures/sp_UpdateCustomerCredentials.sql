create procedure sp_UpdateCustomerCredentials
	@UserName nvarchar(50),
	@PassWord nvarchar(50),
	@SecurityQuestion nvarchar(100),
	@SecurityAnswer nvarchar(100),
	@ID int
as
begin
	set nocount on;
	update CustomerCredentials
	set Username = @UserName,
		[Password] = @PassWord,
		SecurityQuestion = @SecurityQuestion,
		SecurityAnswer = @SecurityAnswer
	where CustomerID = @ID;

	return 0;
end