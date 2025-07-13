pageextension 50004 "Item Work Instruction" extends "Item Card"
{
    layout
    {
        addafter("Production BOM No.")
        {
            field("Work Instruction"; Rec."Work Instruction")
            {
                ApplicationArea = All;
                Caption = 'Work Instruction';
            }
            field("PrdPlanner"; Rec."PrdPlanner")
            {
                ApplicationArea = All;
                Caption = 'Production Planner';
                ToolTip = 'Name of the production planner responsible for the work instruction.';
            }
        }
    }
}