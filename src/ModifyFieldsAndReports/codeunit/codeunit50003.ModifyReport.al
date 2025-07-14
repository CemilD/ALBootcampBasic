codeunit 50003 ModifyReport
{
    [EventSubscriber(ObjectType::Report, Report::"Exchange Production BOM Item", 'OnIntegerOnPostDataItemOnBeforeModifyProductionBOMLine', '', false, false)]
    local procedure ForceModifyProductionBOMLine(
        var ShouldModifyProductionBOMLine: Boolean)
    begin
        ShouldModifyProductionBOMLine := false;
    end;
}