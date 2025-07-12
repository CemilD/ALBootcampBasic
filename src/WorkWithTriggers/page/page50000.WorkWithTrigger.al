page 50000 WorkWithTrigger
{
    Caption = 'Work With Trigger';
    PageType = List;
    ApplicationArea = All;
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
                    ToolTip = 'The item number associated with the working with trigger table.';
                }
            }
        }
        area(Factboxes)
        {
            
        }
    }
    

}