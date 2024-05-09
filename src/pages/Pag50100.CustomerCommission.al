namespace bctraining.bctraining;

page 50100 "Customer Commission"
{
    ApplicationArea = All;
    Caption = 'Customer Commission';
    PageType = List;
    SourceTable = CustomerCommission;
    UsageCategory = Lists;
    CardPageId = "Customer Commission card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Commission Name"; Rec."Commission Name")
                {
                    ToolTip = 'Specifies the value of the Commission Name field.';
                }
                field("Commission Date"; Rec."Commission Date")
                {
                    ToolTip = 'Specifies the value of the Commission Date field.';
                }


                field("Commission Amount"; Rec."Commission Amount")
                {
                    ToolTip = 'Specifies the value of the Commission Amount field.';
                    Editable = false;
                }

                field("Commssion Percentage"; Rec."Commssion Percentage")
                {
                    ToolTip = 'Specifies the value of the Commssion Percentage field.';
                }
                field(Comments; Rec.Comments)
                {
                    ToolTip = 'Specifies the value of the Comments field.';
                }


            }
        }
    }
}
