create procedure sp_InsertRegion
	@Name nvarchar(50),
	@ID int output
as 
begin
	set nocount on;

	insert into Regions (Name)
	values (@Name);
	
	set @ID = @@IDENTITY;

	return 0;
end