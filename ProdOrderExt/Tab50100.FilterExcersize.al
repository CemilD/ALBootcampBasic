table 50002 FilterExcersize
{
    Caption = 'Filter Exercise';
    TableType = Normal;
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;Country ; Code[10])
        {
            Caption = 'Country';
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region"."Code";
            ToolTip = 'The country or region code.';
        }
        field(20;Amaount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
            ToolTip = 'The amount of the transaction.';
        }
    }   
    
    keys
    {
        key(PK; Country)
        {
            Clustered = true;
        }
    }
}