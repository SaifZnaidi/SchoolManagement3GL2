page 50101 Student
{
    PageType = Card;
    SourceTable = Student;
    Caption = 'Student Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(CIN; Rec.CIN)
                {
                    ApplicationArea = All;

                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }
                field("Birth Date"; Rec."Birth Date")
                {
                    ApplicationArea = All;
                }



            }
            group(ClassInfo)
            {
                Caption = 'Class Informtions';
                field(Class; Rec.Class)
                {
                    ApplicationArea = All;

                }
                field("Class Description"; Rec."Class Description")
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
                Caption = 'Print';
                Image = Print;
                Promoted = true;
                PromotedCategory = Report;
                ApplicationArea = All;
                trigger OnAction()
                var
                    Student_L: Record Student;
                    StudentList_L: Report "Student List";
                begin
                    // if Student_L.Get(Rec.CIN) then
                    //      Report.Run(50100, true, false, Student_L);
                    StudentList_L.SetTableView(Rec);
                    StudentList_L.Run();
                end;
            }
        }
    }

    var

}