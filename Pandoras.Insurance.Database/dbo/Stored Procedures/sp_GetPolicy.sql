create procedure sp_GetPolicy
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
	
	return 0;
end