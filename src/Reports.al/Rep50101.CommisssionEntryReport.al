namespace bctraining.bctraining;

report 50101 "Commisssion Entry Report"
{
    ApplicationArea = All;
    Caption = 'Commisssion Entry Report';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(CommissionEntry; CommissionEntry)
        {
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
