namespace bctraining.bctraining;

using Microsoft.Sales.Customer;

pageextension 50101 Customer_Ext extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Commission Percentage"; Rec."Commission percentage")
            {

            }
            field("Total Commisison"; Rec."Total Commission")
            {

            }
            field("Comments"; Rec."Comments")
            {

            }

        }

    }
}