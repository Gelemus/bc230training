namespace bctraining.bctraining;

codeunit 50101 Event_Subscription
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Commission Management", OnBeforeCalculateCommission, '', false, false)]
    local procedure OnBeforeCalculateCommission(var CustomerCommission: Record "CustomerCommission"; var IsHandled: Boolean)
    begin
        CustomerCommission."Commission Amount" := ((CustomerCommission."Commssion Percentage" / 100) * CustomerCommission."Calculation Amount") * 4;
        IsHandled := true;
    end;

}
