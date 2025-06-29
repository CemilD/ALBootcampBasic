tableextension 50005 MyFavorites extends Item
{
    fields
    {
        // Boolean field to indicate if the item is a favorite
        field(50005; "My Favorite"; Boolean)
        {
            Caption = 'My Favorite';
            DataClassification = CustomerContent;
            ToolTip = 'Indicates if this item is marked as a favorite.';
            Editable = true;
        }
    }
}