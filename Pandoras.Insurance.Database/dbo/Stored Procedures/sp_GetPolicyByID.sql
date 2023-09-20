create procedure sp_GetPolicyByID 
@ID int 
as 
begin 
	set nocount on;
	select
		ID,
		Policies.Number, 
		Policies.PremiumAmount,
		Policies.CoverageLimit,
		Policies.StartDate,
		Policies.EndDate,
		Policies.PolicyTypeID,
		Policies.CustomerID,
		Policies.EmployeeID,
		Policies.CarID,
		CreateDate,
		IsDeleted
	from Policies
	where ID = @ID;

	return 0;
end