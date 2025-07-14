page 50000 PrdDispoPilot

{
    PageType = List;
    Caption = 'Disposition Pilot';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "PRDDispoPilot";
    SourceTableTemporary = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(ItemNo; Rec.ItemNo)
                {
                    Caption = 'Item No.';
                    ApplicationArea = All;
                    ToolTip = 'Unique identifier for the item in the disposition pilot.';
                }
                field(ItemName; Rec.ItemName)
                {
                    Caption = 'Item Name';
                    ApplicationArea = All;
                }
                field(PrdPlanner; Rec.PrdPlanner)
                {
                    Caption = 'Production Planner';
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Name of the production planner in the disposition pilot.';
                }
            }
        }
    }

    trigger OnOpenPage()
    var
        ProdOrder: codeunit ProdOrder;
    begin
        ProdOrder.FillPRDDispoPilot(Rec);
  
    end;

}
