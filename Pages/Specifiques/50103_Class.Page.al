page 50103 "Class Card"
{
    PageType = Card;
    //ApplicationArea = All;
    // UsageCategory = Administration;
    SourceTable = Class;
    Caption = 'Class Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Teacher; Rec.Teacher)
                {
                    ApplicationArea = All;
                }
                field("Student's Number"; Rec."Student's Number")
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

    var

}