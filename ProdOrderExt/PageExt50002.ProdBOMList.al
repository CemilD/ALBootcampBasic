pageextension 50002 ProdBOMList extends "Production BOM List"
{
    layout
    {
        addafter(Description)
        {

            field(SummComponents; Rec.SummComponents)
            {
                Caption = 'Components';
                ApplicationArea = All;
                ToolTip = 'Summary of components of the BOM';
            }

        }
    }

    actions
    {
        addlast(Creation)
        {
            action(CD20)
            {
                ApplicationArea = All;
                Caption = 'CD20';
                Image = Calculate;
                ToolTip = 'Counts the amount of transactions for each country.';
                trigger OnAction()
                var
                    CountAmountOfCountry: Codeunit ProdOrder;

                begin
                    CountAmountOfCountry.SumOfComponents();
                    CurrPage.Update(true);
                    Message('Page is done');
                end;

            }

            // List of BOM status open
            action(CD21)
            {
                ApplicationArea = All;
                Caption = 'CDBOMStatus';
                Image = CalculateHierarchy;
                ToolTip = 'Filters the status of the BOMs to New.';
                trigger OnAction()
                var
                    CountBOMStatus: Codeunit ProdOrder;
                begin
                    CountBOMStatus.FilterStatusNew(Rec);
                    Message('Page is done');
                end;
            }
        }
    }

}