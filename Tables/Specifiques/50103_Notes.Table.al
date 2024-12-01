table 50103 Notes
{
    DataClassification = ToBeClassified;
    Caption = 'Notes';

    fields
    {
        field(1; "Student CIN"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Student CIN';
        }
        field(2; "Subject Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Subject Code';
            TableRelation = Subject;

            trigger OnValidate()
            var
                Subject_L: Record Subject;
                Notes_L: Record Notes;
                Error_L: Label 'You have already affected the note %1 to subject %2';
            begin
                Notes_L.Reset();
                Notes_L.SetRange("Subject Code", Rec."Subject Code");
                Notes_L.SetRange("Student CIN", Rec."Student CIN");
                Notes_L.SetRange(Semester, Rec.Semester);
                if Notes_L.FindFirst() then
                    Error(Error_L, Notes_L.Note, Notes_L."Subject Description");


                if Subject_L.Get("Subject Code") then
                    "Subject Description" := Subject_L.Description;
            end;
        }
        field(3; "Subject Description"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Subject Description';
            Editable = false;
        }

        field(4; Note; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Notes';
        }
        field(5; "Line No"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line No';
            AutoIncrement = true;

        }
        field(6; Semester; Enum Semester)
        {
            DataClassification = ToBeClassified;
            Caption = 'Semester';
        }
    }

    keys
    {
        key(Key1; "Student CIN", "Line No")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {

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