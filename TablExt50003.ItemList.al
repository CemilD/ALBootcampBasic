tableextension 50003 ItemListExtension extends Item
{
    fields
    {
        field(50000; "BOM Status"; Enum "BOM Status")
        {
            Caption = 'BOM Status';
            ToolTip = 'Status of the BOM';

            FieldClass = FlowField;
            CalcFormula = lookup("Production BOM Header".Status where("No." = field("Production BOM No.")));
        }
    }
    
}