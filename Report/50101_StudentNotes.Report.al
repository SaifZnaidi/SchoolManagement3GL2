report 50101 "Student's Notes"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/StudentNotes.rdl';
    Caption = 'Student''s Notes';

    dataset
    {
        dataitem(Student; Student)
        {
            column(CIN; CIN)
            {

            }
            column(First_Name; "First Name")
            {

            }
            column(Last_Name; "Last Name")
            {

            }
            column(Class_Description; "Class Description")
            {

            }
            column(First_Semester_Average; "First Semester Average")
            {

            }
            column(Second_Semester_Average; "Second Semester Average")
            {

            }
            column(Overall_Year_Average; "Overall Year Average")
            {

            }
            column(Overall_Year_Status; "Overall Year Status")
            {

            }
            column(CompanyPicture; CompanyInformation_G.Picture)
            {

            }
            column(CompanyName; CompanyInformation_G.Name)
            {

            }
            column(Companyaddress; CompanyInformation_G.Address)
            {

            }
            column(CompanyPhone; CompanyInformation_G."Phone No.")
            {

            }
            dataitem(Notes; Notes)
            {
                DataItemLinkReference = Student;
                DataItemLink = "Student CIN" = field(CIN);

                column(Subject_Description; "Subject Description")
                {

                }
                column(Note; Note)
                {

                }
                column(Semester; Semester)
                {

                }
                column(NoteMin_L; NoteMin_L)
                {

                }
                column(NoteMax_L; NoteMax_L)
                {

                }

                trigger OnAfterGetRecord()
                var
                    Student_L: Record Student;
                    Note_L: Record Notes;
                    //  NoteMax_L: Decimal;
                    //   NoteMin_L: Decimal;
                    FinalNoteMax_L: Decimal;
                    FinalNoteMin_L: Decimal;
                begin
                    NoteMax_L := 0;
                    NoteMin_L := 0;
                    FinalNoteMax_L := 0;
                    FInalNoteMin_L := 0;

                    Student_L.Reset();
                    Student_L.SetRange(Class, Student.Class);

                    if Student_L.FindSet() then
                        repeat
                            Note_L.Reset();
                            Note_L.SetRange("Student CIN", Student_L.CIN);
                            Note_L.SetRange("Subject Code", Notes."Subject Code");

                            if Note_L.FindSet() then begin
                                NoteMax_L := Note_L.Note;
                                NoteMin_L := Note_L.Note;
                                repeat
                                    if Note_L.Note > NoteMax_L then
                                        NoteMax_L := Note_L.Note;
                                    if Note_L.Note < NoteMin_L then
                                        NoteMin_L := Note_L.Note;
                                until Note_L.Next() = 0;
                            end;
                        until Student_L.Next() = 0;


                end;
            }

            trigger OnPreDataItem()
            begin
                CompanyInformation_G.Get();
                CompanyInformation_G.CalcFields(Picture);
            end;




        }
    }

    requestpage
    {

        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }



    var
        CompanyInformation_G: Record "Company Information";
        NoteMax_L: Decimal;
        NoteMin_L: Decimal;
}