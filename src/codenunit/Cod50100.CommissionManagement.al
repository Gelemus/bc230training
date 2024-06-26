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

    procedure GenerateCommissionEntries(var CustomerCommission: Record CustomerCommission)
    var
        CommissionEntry: Record CommissionEntry;
        Customer: Record Customer;
        myInt: Integer;
    begin
        CustomerCommission.Reset;
        CustomerCommission.SetRange(No, CustomerCommission.No);
        if CustomerCommission.FindSet then begin
            repeat
                CommissionEntry.Reset;
                CommissionEntry.Init;
                CommissionEntry."Document No" := CustomerCommission.No;
                CommissionEntry."Commission Calculation Amount" := CustomerCommission."Calculation Amount";
                CommissionEntry."Commission Percentage" := CustomerCommission."Commssion Percentage";
                CommissionEntry.Insert();
            until CustomerCommission.Next = 0;

        end;
    end;
}
