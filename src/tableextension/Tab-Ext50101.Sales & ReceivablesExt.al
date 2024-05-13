namespace bctraining.bctraining;

using Microsoft.Purchases.Setup;
using Microsoft.Foundation.NoSeries;
using Microsoft.Sales.Setup;

tableextension 50101 "Sales & ReceivablesExt" extends "Sales & Receivables Setup"
{

    //Addlast()

    fields
    {
        field(50100; "Customer Commission"; Code[50])
        {
            Caption = 'Customer Commission';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";

        }
    }

}
