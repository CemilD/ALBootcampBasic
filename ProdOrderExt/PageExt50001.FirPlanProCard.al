pageextension 50001 FirmPlanProdCard extends "Firm Planned Prod. Order"
{
    layout
    {
        addlast(Content)
        {
            group("CD Sales Info")
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
}