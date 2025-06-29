pageextension 50005 ItemFavorites extends "Item Card"
{
    layout
    {
        addafter("Item Category Code")
        {
            field("My Favorite"; Rec."My Favorite")
            {
                ApplicationArea = All;
                Caption = 'My Favorite';
                ToolTip = 'Indicates if this item is marked as my favorite Item';
                Visible = true;
                Editable = true;
            }
        }

    }
    
}