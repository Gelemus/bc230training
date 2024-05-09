namespace bctraining.bctraining;
using Microsoft.Sales.Customer;

codeunit 50100 "Commission Management"
{
    procedure CalculateCommission(var CustomerCommission: Record "CustomerCommission");

    begin
        CustomerCommission."Commission Amount" := (CustomerCommission."Commssion Percentage" / 100) * CustomerCommission."Calculation Amount";

    end;

  }
