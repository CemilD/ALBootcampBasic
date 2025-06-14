tableextension 50002 BOMList extends "Production BOM Header"
{
    fields
    {
        field(50000; SummComponents; Integer)
        {
            Caption = 'My Field';
            DataClassification = CustomerContent;
            ToolTip = 'Summary of components of the BOM';
        }
    }
    
}