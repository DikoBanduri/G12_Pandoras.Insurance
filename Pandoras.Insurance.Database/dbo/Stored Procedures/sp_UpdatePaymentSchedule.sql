create procedure sp_UpdatePaymentSchedule
    @ID int,
    @PolicyID int,
    @PaymentDate datetime
as
begin
    set nocount on;

    update PaymentSchedules
    set PolicyID = @PolicyID,
        ScheduledPaymentDate = @PaymentDate
    where ID = @ID;

    return 0;
end