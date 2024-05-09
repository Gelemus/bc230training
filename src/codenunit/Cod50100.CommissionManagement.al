namespace bctraining.bctraining;
using Microsoft.Sales.Customer;

codeunit 50100 "Commission Management"
{
    procedure CalculateCommission(var CustomerCommission: Record "CustomerCommission");
    var
        IsHandled: Boolean;
    begin
        OnBeforeCalculateCommission(CustomerCommission, IsHandled);
        if IsHandled then
            Message('Iko sawa')
        else
            CustomerCommission."Commission Amount" := (CustomerCommission."Commssion Percentage" / 100) * CustomerCommission."Calculation Amount";

    end;


    [IntegrationEvent(false, false)]
    procedure OnBeforeCalculateCommission(var CustomerCommission: Record "CustomerCommission"; var IsHandled: Boolean)
    begin
    end;
}