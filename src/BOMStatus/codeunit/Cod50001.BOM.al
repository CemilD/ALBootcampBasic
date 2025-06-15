codeunit 50001 BOM
{
procedure BOMStatus(var Item: Record Item)
var
    BOMStatus: Record "Production BOM Header";
    BOMNo: Code[20];
begin
    // prüfe ob es BOM gibt
    
    Item.SetFilter("Production BOM No.", '<>%1', '');

    // Prüfe ob welche Nummer die BOM 
    if Item.FindSet() then begin
        repeat

            if BOMStatus.Get(Item."Production BOM No.") then begin
                BOMNo := Item."Production BOM No.";
                Message('BOM found: %1', BOMNo);
                // Wenn es eine BOM gibt, dann setze den Status
                case BOMStatus.Status of
                    BOMStatus.Status::New:
                        Item."BOM Status" := Item."BOM Status"::New;
                    BOMStatus.Status::Closed:
                        Item."BOM Status" := Item."BOM Status"::Closed;
                    BOMStatus.Status::Certified:
                        Item."BOM Status" := Item."BOM Status"::Certified;
                end;
            end;
            Item.Modify();
        until Item.Next() = 0;
    end;
    
end;
}