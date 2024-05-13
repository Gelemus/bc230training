namespace bctraining.bctraining;

page 50103 CommissionEntryList
{
    ApplicationArea = All;
    Caption = 'CommissionEntryList';
    PageType = List;
    SourceTable = CommissionEntry;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Commission Calculation Amount"; Rec."Commission Calculation Amount")
                {
                    ToolTip = 'Specifies the value of the Commission Calculation Amount field.';
                }
                field("Commission Date"; Rec."Commission Date")
                {
                    ToolTip = 'Specifies the value of the Commission Date field.';
                }
                field("Commission Percentage"; Rec."Commission Percentage")
                {
                    ToolTip = 'Specifies the value of the Commission Percentage field.';
                }
                field("Commisssion Amount"; Rec."Commisssion Amount")
                {
                    ToolTip = 'Specifies the value of the Commisssion Amount field.';
                }
                field("Document No"; Rec."Document No")
                {
                    ToolTip = 'Specifies the value of the Document No field.';
                }
            }
        }
    }
}
