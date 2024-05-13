namespace bctraining.bctraining;

report 50100 Commission
{
    ApplicationArea = All;
    Caption = 'Commission';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'src/Layout/Commission.rdl';

    dataset
    {
        dataitem(CustomerCommission; CustomerCommission)
        {

            column(No; No)
            {
            }
            column(CustomerNo; "Customer No")
            {
            }
            column(CommissionDate; "Commission Date")
            {
            }
            column(CalculationAmount; "Calculation Amount")
            {
            }
            column(CommissionAmount; "Commission Amount")
            {
            }
            column(CommssionPercentage; "Commssion Percentage")
            {
            }
            column(CommissionName; "Commission Name")
            {
            }
            column(Comments; Comments)
            {
            }

        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
