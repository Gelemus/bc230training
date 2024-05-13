table 50102 CommissionEntry
{
    Caption = 'CommissionEntry';
    DataClassification = ToBeClassified;
    LookupPageId = CommissionEntryList;
    DrillDownPageId =CommissionEntryList;

    fields
    {
        field(1; "Document No"; Code[50])
        {
            Caption = 'Document No';
        }
        field(2; "Commission Date"; Date)
        {
            Caption = 'Commission Date';
        }
        field(3; "Commission Percentage"; Decimal)
        {
            Caption = 'Commission Percentage';
        }
        field(4; "Commission Calculation Amount"; Decimal)
        {
            Caption = 'Commission Calculation Amount';
        }
        field(5; "Commisssion Amount"; Decimal)
        {
            Caption = 'Commisssion Amount';
        }
    }
    keys
    {
        key(PK; "Document No")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()

    var
        myInt: Integer;
    begin
        "Commission Date" := Today;
    end;
}
