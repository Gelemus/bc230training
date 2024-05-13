namespace bctraining.bctraining;

using Microsoft.Sales.Setup;

pageextension 50102 "Sales & Receivables Setup Ext" extends "Sales & Receivables Setup"
{

    layout
    {

        addlast("Number Series")
        {

            field("Customer Commission"; Rec."Customer Commission")
            {
                Caption = 'Customer Commission';
                //DataClassification = ToBeClassified;

            }


        }


    }
}