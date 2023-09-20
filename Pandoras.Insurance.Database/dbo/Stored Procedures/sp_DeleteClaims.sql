create procedure sp_DeleteClaims
    @ID int
as
begin
    set nocount on;

    update Claims
    set IsDeleted = 1
    where ID = @ID;

    return 0;
end