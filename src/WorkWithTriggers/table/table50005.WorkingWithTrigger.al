table 50005 WorkingWithTrigger
{
    Caption = 'Working With Trigger';
    TableType = Normal;
    DataClassification = CustomerContent;
    Extensible = true;
    
    fields
    {
        field(1;KeyField; Code[20])
        {
            Caption = 'Key Field';
            DataClassification = CustomerContent;
            ToolTip = 'The key field for the working with trigger table.';
        }
        field(10;Workcenter; Text[100])
        {
            Caption = 'Workcenter';
            DataClassification = CustomerContent;
        }
        field(20;ItemNo; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
            ToolTip = 'The item number associated with the working with trigger table.';

            trigger OnLookup()
            var
                Item: Record Item;
            begin
                if page.RunModal(0, Item) = Action::LookupOK then 
                    ItemNo := Item."No.";
                    MyField := Item.Description;
            end;
        }
        field(30;MyField; Text[100])
        {
            Caption = 'My Field';
            DataClassification = CustomerContent;
            ToolTip = 'An example field for demonstration purposes.';
            Editable = false;
        }
    }
    
    keys
    {
        key(Key1; KeyField)
        {
            Clustered = true;
        }
    }
    
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}