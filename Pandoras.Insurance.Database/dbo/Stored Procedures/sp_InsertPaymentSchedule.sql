create procedure sp_InsertPaymentSchedule
    @PolicyID int,
    @PaymentDate datetime,
    @ID int output
as
begin
    set nocount on;

    insert into PaymentSchedules(PolicyID, ScheduledPaymentDate)
    values (@PolicyID, @PaymentDate);

    set @ID = @@IDENTITY;

    return 0;
end