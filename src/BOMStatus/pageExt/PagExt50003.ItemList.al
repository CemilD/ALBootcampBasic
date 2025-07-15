pageextension 50003 ItemList extends "Item List"
{
    layout
    {
        addafter(Description)
        {
            field("BOM Status"; Rec."BOM Status")
            {
                Caption = 'BOM Status';
                ApplicationArea = All;
                ToolTip = 'Status of the BOM';

                trigger OnValidate()
                var
                    BOMStatus: Record "Production BOM Header";
                begin

                    BOMStatus.SetRange("No.", Rec."No.");
                    


                end;
            }
        }
    }
    actions
    {
        addlast(Processing)
        {
            action("Update BOM Status")
            {
                ApplicationArea = All;
                Caption = 'Update BOM Status';
                ToolTip = 'Update the BOM status based on the Production BOM Header';

                trigger OnAction()
                var
                    BOMCodeunit: Codeunit "BOM";
                begin
                    // Call the codeunit to update the BOM status
                    BOMCodeunit.BOMStatus(Rec);
                    Message('BOM Status updated successfully.');
                end;
            }
        }
    }


}