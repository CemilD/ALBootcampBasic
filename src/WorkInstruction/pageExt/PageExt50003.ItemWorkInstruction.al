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
                ToolTip = 'Specifies the work instruction number.';
            }
        }
    }
}