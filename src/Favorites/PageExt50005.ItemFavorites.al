pageextension 50005 ItemFavorites extends "Item Card"
{
    layout
    {
        addafter("Item Category Code")
        {
            field("MyFavorite"; Rec."My Favorite")
            {
                ApplicationArea = All;
                Caption = 'My Favorite';
                ToolTip = 'Indicates if this item is marked as a favorite.';
                Visible = true;
                Editable = true;
            }
        }
    }
    
}