table 50100 Student
{
    DataClassification = ToBeClassified;
    Caption = 'Student';

    fields
    {
        field(1; CIN; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'CIN';
            trigger OnValidate()
            var
                ErorMsg_L: Label 'The CIN should be 8 caracters';
            begin
                if StrLen(Format(Rec.CIN)) <> 8 then
                    Error(ErorMsg_L);
            end;
        }
        field(2; "First Name"; Text[150])
        {
            DataClassification = ToBeClassified;
            Caption = 'First Name';

        }
        field(3; "Last Name"; Text[150])
        {
            DataClassification = ToBeClassified;
            Caption = 'Last Name';
        }
        field(4; "Birth Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Birth Date';
        }
        field(5; Class; Code[25])
        {
            DataClassification = ToBeClassified;
            Caption = 'Class';
            TableRelation = Class;

            trigger OnValidate()
            var
                Class_L: Record Class;
            begin
                if Class_L.Get(Rec.Class) then begin
                    Rec."Class Description" := Class_L.Description;
                    Rec.Validate("Class Description", Class_L.Description);
                end;
            end;

        }
        field(6; "Class Description"; Text[150])
        {
            DataClassification = ToBeClassified;
            Caption = 'Class Description';
            Editable = false;

        }
    }

    keys
    {
        key(Key1; CIN)
        {
            Clustered = true;
        }

    }

    fieldgroups
    {

    }

    var


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
