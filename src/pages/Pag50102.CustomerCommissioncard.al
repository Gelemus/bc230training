namespace bctraining.bctraining;

page 50102 "Customer Commission card"
{
    ApplicationArea = All;
    Caption = 'Customer Commission card';
    PageType = Card;
    SourceTable = "CustomerCommission";
    layout
    {
        area(content)
        {

            group(General)
            {
                Caption = 'General';

            }
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

            field("Calculation Amount"; Rec."Calculation Amount")
            {
                ToolTip = 'Specifies the value of the Commission Amount field.';

                trigger Onvalidate()
                var
                    myInt: Integer;
                    CommissionMng: Codeunit "Commission Management";
                begin
                    CommissionMng.CalculateCommission(Rec)
                end;
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
    actions
    {
        area(Navigation)
        {
            action(CalculateCommission)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    CommissionMng: Codeunit "Commission Management";
                begin
                    CommissionMng.CalculateCommission(Rec)

                end;
            }


        }

    }

}

