page 50104 "Subject List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Subject;
    Caption = 'Subject List';
    CardPageId = 50105;

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
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Coeff; Rec.Coeff)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

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