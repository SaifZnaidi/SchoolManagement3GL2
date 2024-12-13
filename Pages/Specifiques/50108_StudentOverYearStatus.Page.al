page 50108 "Student Over Year Status"
{
    Caption = 'Student Over Year Status';
    PageType = CardPart;
    SourceTable = Student;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(General)
            {
                Caption = 'General';

                field("Number of Passed Students"; Rec."Number of Passed Students")
                {
                    ApplicationArea = All;
                    DrillDownPageId = Students;
                }
                field("Number of not Passed Students"; Rec."Number of not Passed Students")
                {
                    ApplicationArea = All;
                    DrillDownPageId = Students;
                }
            }
        }
    }
}
