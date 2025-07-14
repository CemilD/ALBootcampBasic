table 50000 PRDDispoPilot
{
    Caption = 'Disposition Pilot';
    DataClassification = CustomerContent;
    TableType = Temporary;

    
    fields
    {
        field(5;ItemNo; code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
            ToolTip = 'Unique identifier for the item in the disposition pilot.';

        }
        field(10;ItemName; Text[100])
        {
            Caption = 'Item Name';
            DataClassification = CustomerContent;
            ToolTip = 'Name of the item in the disposition pilot.';
        }
        field(20;PrdPlanner; Text[100])
        {
            Caption = 'Production Planner';
            ToolTip = 'Name of the production planner in the disposition pilot.';

            FieldClass = FlowField;
            CalcFormula = lookup(item.PrdPlanner where("No." = field(ItemNo)));
        }


    }
    
}