tableextension 50004 WorkInstruction extends Item
{
    fields
    {
        field(50001; "Work Instruction"; Code[20])
        {
            Caption = 'Work Instruction';
            ToolTip = 'Specifies the work instruction number.';
            TableRelation = "Work Instruction";
        }
    }
}