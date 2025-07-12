page 50005 WorkWithTrigger
{
    Caption = 'Work With Trigger';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = WorkingWithTrigger;
    
   
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(KeyField; Rec.KeyField)
                {
                    ApplicationArea = All;
                    ToolTip = 'The key field for the working with trigger table.';
                }
                field(Workcenter; Rec.Workcenter)
                {
                    ApplicationArea = All;
                }
                field(ItemNo; Rec.ItemNo)
                {
                    ApplicationArea = All;
                }
                field(MyField; Rec.MyField)
                {
                    ApplicationArea = All;
                    ToolTip = 'An example field for demonstration purposes.';
                }
            }
        }
        area(Factboxes)
        {
            
        }
    }
    

}