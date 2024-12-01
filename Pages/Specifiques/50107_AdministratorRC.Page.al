page 50107 "Administrator RoleCenter"
{
    PageType = RoleCenter;
    Caption = 'Administrator Role Center';

    layout
    {
        area(RoleCenter)
        {

        }
    }

    actions
    {
        area(Creation)
        {
            action(Student)
            {
                RunObject = Page Student;
                ApplicationArea = All;
                RunPageMode = Create;
            }
            action(Class)
            {
                RunObject = Page "Class Card";
                ApplicationArea = All;
                RunPageMode = Create;
            }
            action(Subject)
            {
                RunObject = Page "Subject Card";
                ApplicationArea = All;
                RunPageMode = Create;
            }
        }
        area(Sections)
        {
            group(HR)
            {
                Caption = 'HR';
                action(Employee)
                {
                    RunObject = Page "Employee List";
                    ApplicationArea = All;
                }
                action(Students)
                {
                    RunObject = Page Students;
                    ApplicationArea = All;
                }
            }
            group(Exams)
            {
                Caption = 'Exams';
                action(Subjects)
                {
                    RunObject = Page "Subject List";
                    ApplicationArea = All;
                }
                action(Classes)
                {
                    RunObject = Page "Class List";
                    ApplicationArea = All;
                }
            }
        }
        area(Embedding)
        {
            action("Student List")
            {
                Caption = 'Student List Report';
                ApplicationArea = All;
                RunObject = report "Student List";
            }
        }
    }
}