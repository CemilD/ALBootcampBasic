pageextension 50000 ProdListOrderNo extends "Firm Planned Prod. Orders"
{
    layout
    {
        addlast(Control1)
        {
            field("CD Sales No"; Rec."CD Sales No")
            {
                Caption = 'CD Sales No';
                ApplicationArea = All;
                TableRelation = "Sales Header"."No.";
                Visible = true;
            }
            field("CD Sales Line Txt"; Rec."CD Sales Line Txt")
            {
                Caption = 'CD Sales Line Txt';
                ApplicationArea = All;
                Visible = true;
            }
        }
    }
}
