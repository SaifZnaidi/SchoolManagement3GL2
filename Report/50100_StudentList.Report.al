report 50100 "Student List"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/StudentList.rdl';
    Caption = 'Student List';

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
            column(Class; Class)
            {

            }
            column(Class_Description; "Class Description")
            {

            }
            column(CompanyName_G; CompanyName_G)
            {

            }
            column(CompanyPicture; CompanyInfo_G.Picture)
            {

            }

            trigger OnPreDataItem()

            begin
                CompanyInfo_G.get();
                CompanyInfo_G.CalcFields(Picture);
                CompanyName_G := CompanyInfo_G.Name;
                If Class_G <> '' then
                    Student.SetRange(Class, Class_G);
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
                    field(Class_G; Class_G)
                    {
                        ApplicationArea = All;
                        TableRelation = Class;
                        Caption = 'Class Filter';
                    }

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
        CompanyName_G: Text;
        CompanyInfo_G: Record "Company Information";
        Class_G: Text;

}