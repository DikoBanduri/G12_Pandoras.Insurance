create procedure sp_InsertCustomerCredentials 
	@ID int,
	@Username nvarchar(30),
	@Password nvarchar(50),
	@SecurityQuestion nvarchar(100),
	@SecurityAnswer nvarchar(100)
as
begin
	set nocount on;
	insert into CustomerCredentials(Username, [Password], SecurityQuestion, SecurityAnswer)
	values (@Username, @Password, @SecurityQuestion, @SecurityAnswer)

	set @ID = @@IDENTITY;
	return 0;
end