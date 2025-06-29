codeunit 50000 ProdOrder
{
    // function to count the amount of transactions for each country
    procedure GetAmountOfCountry()
    var
        Customer: Record "Customer";
        FilterExercise: Record "FilterExcersize";
        TotalAmount: Integer;
    begin

        // 1. Filter setzen, bevor du die Daten durchläufst
        FilterExercise.Reset();
        if FilterExercise.FindSet() then
            repeat
                Customer.SetRange("Country/Region Code", FilterExercise.Country);
                FilterExercise.Amaount := Customer.Count;
                FilterExercise.Modify();
            until FilterExercise.Next() = 0;

    end;

    // Function to sum the components of Production BOMs
    procedure SumOfComponents()
    var
        ProdOrderCodeUnit: Codeunit ProdOrder;
        ProdBOMHeader: Record "Production BOM Header";
        ProdBOMLine: Record "Production BOM Line";
        CountingBOM: Integer;

    begin
        Message('Start counting components');
        CountingBOM := 0;
        ProdBOMHeader.Reset();

        // Go through all Production BOM Headers
        if ProdBOMLine.FindSet() then begin

            ProdBOMLine.SetRange("No.", ProdBOMHeader."No.");

            Message('First If is true');

            if ProdBOMHeader.FindSet() then begin
                Message('Second If is true');
                repeat

                    CountingBOM := 0; // Reset the counter for each BOM Header
                    ProdBOMLine.SetRange("No.", ProdBOMHeader."No.");

                until ProdBOMHeader.Next() = 0;
            end;

            Message('Modify');
            ProdBOMHeader.SummComponents := CountingBOM;
            ProdBOMHeader.Modify();
        end;

    end;

    // Function to Filter status new
    procedure FilterStatusNew(var BOMList: Record "Production BOM Header")
    var
        index: Integer;
    begin

        BOMList.setrange(BOMList.Status, BOMList.Status::New);

        if BOMList.FindSet() then begin
            repeat
                if BOMList.Status = BOMList.Status::New then
                    index += 1;
            until BOMList.Next() = 0;

            Message(' %2 BOM with No. %1 has status New', BOMList."No.", index);
        end;

    end;

}
