table 50001 ProdPlanner
{
    Caption = 'Production Planner';
    DataClassification = CustomerContent;

    fields
    {
        field(1; PlannerID; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Planner ID';
            ToolTip = 'Unique identifier for the production planner.';
        }
        field(10; PlannerName; Text[100])
        {
            Caption = 'Planner Name';
            DataClassification = CustomerContent;
            ToolTip = 'Name of the production planner.';
        }
        field(20; PlannerEmail; Text[100])
        {
            Caption = 'Planner Email';
            DataClassification = CustomerContent;
            ToolTip = 'Email address of the production planner.';
        }
    }

    keys
    {
        key(Key1; PlannerID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
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