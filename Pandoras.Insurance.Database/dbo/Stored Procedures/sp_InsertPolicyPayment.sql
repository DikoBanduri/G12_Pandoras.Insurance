create procedure sp_InsertPolicyPayment
    @PaymentScheduleID int,
    @Amount decimal (10,2),
    @PaymentDate datetime,
    @ID int output
as
begin
    set nocount on;

    insert into PolicyPayments(PaymentScheduleID, Amount, PaymentDate)
    values (@PaymentScheduleID, @Amount, @PaymentDate);
   
    set @ID = @@IDENTITY;

    return 0;
end