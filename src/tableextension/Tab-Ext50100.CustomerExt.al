namespace bctraining.bctraining;

using Microsoft.Sales.Customer;

tableextension 50100 "Customer _Ext" extends Customer
{
    fields
    {
        field(50100; "Commission Percentage"; Decimal)
        {
            Caption = 'Commission Percentage';
            DataClassification = ToBeClassified;
        }
        field(50101; "Total Commission"; Decimal)
        {
            Caption = 'Total Commission';
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = sum(CustomerCommission."Commission Amount" where("Customer No" = field("No.")));
            Editable = false;


        }
        field(50102; "Comments"; Text[100])
        {
            Caption = 'Comments';
            DataClassification = ToBeClassified;


        }
    }
}
