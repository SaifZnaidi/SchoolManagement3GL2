table 50104 "Student Results"
{
    Caption = 'Student Results';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CIN; Integer)
        {
            Caption = 'CIN';
            Editable = false;
        }
        field(2; "Full Name"; Text[200])
        {
            Caption = 'Full Name';
            Editable = false;
        }
        field(3; "Average S1"; Decimal)
        {
            Caption = 'Average S1';
            Editable = false;
        }
        field(4; "Average S2"; Decimal)
        {
            Caption = 'Average S2';
            Editable = false;
        }
        field(5; "OY Average"; Decimal)
        {
            Caption = 'OY Average';
            Editable = false;
        }
        field(6; Status; Enum "Oveverall Year Status")
        {
            Caption = 'Status';
            Editable = false;
        }
    }
    keys
    {
        key(PK; CIN)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        myInt: Integer;
    begin

    end;
}
