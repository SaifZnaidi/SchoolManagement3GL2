page 50106 Notes
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Notes;
    Caption = 'Notes';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Subject Code"; Rec."Subject Code")
                {
                    ApplicationArea = All;
                }
                field("Subject Description"; Rec."Subject Description")
                {
                    ApplicationArea = All;
                }
                field(Note; Rec.Note)
                {
                    ApplicationArea = All;
                }
                field(Semester; Rec.Semester)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}