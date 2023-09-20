create procedure GetCategoryByID
@ID int
as
begin
	set nocount on;
	select Categories.Code,
		   Categories.[Name],
		   Categories.[Description]
	from Categories
	where ID = @ID;

	return 0;
end