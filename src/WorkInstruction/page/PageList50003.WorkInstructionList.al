page 50003 WorkInstructionList

{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Work Instruction";
    
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Work Instruction ID"; Rec."Work Instruction ID")
                {
                    Caption = 'Work Instruction No.';
                    ApplicationArea = All;
                    ToolTip = 'The unique identifier for the work instruction.';
                }
                field("Work Instruction No."; Rec."Work Instruction No.")
                {
                    Caption = 'Work Instruction ID';
                    ApplicationArea = All;
                }
                field("Work Instruction Description"; Rec."Work Instruction Description")
                {
                    Caption = 'Work Instruction Description';
                    ApplicationArea = All;
                }
                field("Work Instruction Revision"; Rec."Work Instruction Revision")
                {
                    Caption = 'Work Instruction Revision';
                    ApplicationArea = All;
                }
                field("Work Instruction Status"; Rec."Work Instruction Status")
                {
                    Caption = 'Work Instruction Status';
                    ApplicationArea = All;
                }
                field("Work Instruction Used"; Rec."Work Instruction Used")
                {
                    Caption = 'Work Instruction Used';
                    ApplicationArea = All;
                }
            }
        }
    }

}

