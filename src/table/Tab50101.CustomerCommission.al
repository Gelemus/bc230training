table 50101 CustomerCommission
{
    Caption = 'CustomerCommission';
    DataClassification = ToBeClassified;
    LookupPageId = "Customer Commission";
    DrillDownPageId = "Customer Commission";

    fields
    {
        field(1; No; Code[30])
        {
            Caption = 'No';
            Editable = false;
        }
        field(2; "Customer No"; Code[50])
        {
            Caption = 'Customer No';
            TableRelation = Customer."No.";
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                copycustomerData();
            end;
        }
        field(3; "Commission Name"; Text[100])
        {
            Caption = 'Commission Name';
        }
        field(4; "Commission Date"; Date)
        {
            Caption = 'Commission Date';
        }
        field(5; Comments; Text[100])
        {
            Caption = 'Comments';
        }
        field(6; "Commssion Percentage"; Decimal)
        {
            Caption = 'Commssion Percentage';
            //Editable = false;
        }
        field(7; "Commission Amount"; Decimal)
        {
            Caption = 'Commission Amount';
        }
        field(8; "No.Series"; code[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(9; "Calculation Amount"; Decimal)
        {

        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        myInt: Integer;
        noseries: Codeunit NoSeriesManagement;
        SalesSetup: Record "Sales & Receivables Setup";
    begin
        IF No <> ' ' then begin
            SalesSetup.Get();
            noseries.InitSeries(SalesSetup."Customer Commission", xRec."No.Series", 0D, No, "No.Series");
        end;

    end;

    trigger OnModify()
    var
        myInt: Integer;
    begin

    end;

    trigger OnRename()
    var
        myInt: Integer;
    begin

    end;

    local procedure copycustomerData()
    var
        Customer: Record Customer;

    begin
        if Customer.get("Customer No") then begin
            "Commission Name" := Customer.Name;
            "Commssion Percentage" := customer."Commission Percentage";
            "Comments" := customer.Comments;

        end;



    end;




}
