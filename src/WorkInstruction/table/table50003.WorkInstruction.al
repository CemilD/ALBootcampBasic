table 50003 "Work Instruction"
{
    Caption = 'Work Instruction';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Work Instruction ID"; Code[20])
        {
            Caption = 'Work Instruction No.';
            DataClassification = ToBeClassified;
            ToolTip = 'The unique identifier for the work instruction.';
        }
        field(10; "Work Instruction No."; Text[50])
        {
            Caption = 'Work Instruction ID';
            DataClassification = ToBeClassified;
            ToolTip = 'The identifier for the work instruction.';
        }
        field(20; "Work Instruction Description"; Text[100])
        {
            Caption = 'Work Instruction Description';
            DataClassification = ToBeClassified;
            ToolTip = 'A description of the work instruction.';
        }
        field(30; "Work Instruction Revision"; Integer)
        {
            Caption = 'Work Instruction Revision';
            DataClassification = ToBeClassified;
            ToolTip = 'The revision number of the work instruction.';
        }
        field(40; "Work Instruction Status"; Enum "Status")
        {
            Caption = 'Work Instruction Status';
            DataClassification = ToBeClassified;
            ToolTip = 'The status of the work instruction.';
        }
        field(50; "Work Instruction Used"; Integer)
        {
            Caption = 'Work Instruction Used';
            DataClassification = ToBeClassified;
            ToolTip = 'The number of times the work instruction has been used.';
        }
    }


}
