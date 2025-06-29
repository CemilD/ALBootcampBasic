codeunit 50002 MyFavorites
{
    procedure HowWokrsRecords(var Item : Record Item)
    var
        index: Integer;
    begin
        Item.SetRange("My Favorite", true);
        if Item.FindSet() then begin
            index := Item.Count();
        end;
        Message('There are %1 items in the favorites list.', index);
    end;


}