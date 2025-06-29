pageextension 50006 PageListExt extends "Item List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast(Processing)
        {
            action(MyFavorites)
            {
                ApplicationArea = All;
                Caption = 'My FavoritesCD20';
                ToolTip = 'Filter to show only favorite items.';
                Image = Apply;
                trigger OnAction()
                begin
                    Rec.FilterGroup(0); // Filtergruppe für sichtbare Filter
                    Rec.SetRange("My Favorite", true);
                    CurrPage.Update(false); // Page neu laden, damit Filter greifen
                end;
            }
        }
    }

}