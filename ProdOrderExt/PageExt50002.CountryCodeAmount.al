page 50002 CountryCodeAmount
{
    PageType = List;
    SourceTable = "FilterExcersize";
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = true;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Country; Rec.Country)
                {
                    Caption = 'Country';
                    ApplicationArea = All;
                    ToolTip = 'The country or region code.';
                    TableRelation = "Country/Region"."Code";
                }
                field(Amount; Rec.Amaount)
                {
                    Caption = 'Amount';
                    ApplicationArea = All;
                    ToolTip = 'The amount of the transaction.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
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
                    CountAmountOfCountry.GetAmountOfCountry();
                    CurrPage.Update(true);
                    Message('Page is done');
                end;
            }
        }
    }
}