table 50102 Subject
{
    DataClassification = ToBeClassified;
    Caption = 'Subject';

    fields
    {
        field(1; "Subject Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Code';
        }
        field(2; Description; Text[150])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
        field(3; Coeff; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Coeff';
        }
    }

    keys
    {
        key(Key1; "Subject Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}