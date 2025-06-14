tableextension 50000 "Firm Plan Pro Ord" extends "Production Order"
{
    fields
    {
        field(50000; "CD Sales No"; Code[20])
        {
            Caption = 'CD Sales No';
            DataClassification = ToBeClassified;
            ToolTip = 'Production Order applies to the Sales Order No.', Comment ='Dies ist die Verkaufsauftragsnummer, auf die sich der Produktionsauftrag bezieht.';
            TableRelation = "Sales Header"."No.";
        }        

    
        field(50001; "CD Sales Line Txt";Text[100])
        {
            Caption = 'CD Sales Line Txt';
            DataClassification = ToBeClassified;
            ToolTip = 'Production Order applies to the Sales Line Text.', Comment ='Dies ist der Verkaufsauftragszeilentext, auf den sich der Produktionsauftrag bezieht.';
        }

    }
}