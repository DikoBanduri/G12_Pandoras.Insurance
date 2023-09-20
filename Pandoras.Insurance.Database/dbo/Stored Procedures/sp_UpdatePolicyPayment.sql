create procedure sp_UpdatePolicyPayment
    @ID int,
    @PaymentScheduleID int,
    @Amount decimal (10,2),
    @PaymentDate datetime
as
begin
    set nocount on;

    update PolicyPayments
    set PaymentScheduleID = @PaymentScheduleID,
        Amount = @Amount,
        PaymentDate = @PaymentDate
    where ID = @ID;

    return 0;
end