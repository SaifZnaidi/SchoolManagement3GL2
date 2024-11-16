pageextension 50105 "Employee Card Ext" extends "Employee Card" //5200
{
    layout
    {
        modify(Payments)
        {
            Visible = false;
        }
        modify("Job Title")
        {
            Visible = false;
        }
        addafter("Last Name")
        {
            field(Job; Rec.Job)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}