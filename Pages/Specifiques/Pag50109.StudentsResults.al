page 50109 "Student's Results"
{
    Caption = 'Student''s Results';
    PageType = List;
    SourceTable = "Student Results";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(CIN; Rec.CIN)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CIN field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field("Average S1"; Rec."Average S1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Average S1 field.', Comment = '%';
                }
                field("Average S2"; Rec."Average S2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Average S2 field.', Comment = '%';
                }
                field("OY Average"; Rec."OY Average")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OY Average field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }
        }
    }
}
