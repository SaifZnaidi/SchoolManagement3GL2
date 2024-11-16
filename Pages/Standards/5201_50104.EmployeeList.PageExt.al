pageextension 50104 "Employee List Ext" extends "Employee List" //5201
{
    layout
    {
        modify("Phone No.")
        {
            Visible = false;
        }
        modify("Search Name")
        {
            Visible = false;
        }
        modify(Comment)
        {
            Visible = false;

        }
        // addafter("Last Name")
        // {
        //     field("Mobile Phone No."; Rec."Mobile Phone No.")
        //     {

        //     }
        // }
        modify("Mobile Phone No.")
        {
            Visible = true;
        }
        moveafter("Last Name"; "Mobile Phone No.")
    }

    actions
    {
        // Add changes to page actions here
    }

    var

}