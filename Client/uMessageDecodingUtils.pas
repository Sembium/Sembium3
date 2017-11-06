unit uMessageDecodingUtils;

interface

uses
  Classes;

function DecodeMessage(const Msg: string): string;
function DecodeDBTextMessage(const Msg: string): string;
function FormatMessage(const Msg: string; MsgParams: TStrings): string;
function GetMessageId(const Msg: string): string;

implementation

uses
  SysUtils, uServerMessageTexts, uServerMessageIds, uMessageUtils, uUtils,
  xTextMessages, Windows, Forms, StrUtils, Generics.Collections, Variants,
  uClientApp;

const
  IdDelimiter = '*';
  DBMessagePrefix = '~msg';
  DBMessageSuffix = '~';
  DBMessagePrefixLength = Length(DBMessagePrefix);

type
  TServerMessage = record
    Id: string;
    Text: string;
  end;  { TServerMessage }

  TKeyword = record
    Id: string;
    Text: string;
  end;  { TKeyword }

  TDbMessagePos = record
    StartPos, EndPos: Integer;
  end;

var
  ServerMessages: array of TServerMessage;
  DBTextMessages: TDictionary<string, string>;

const
  ServerMessagesConst: array[1..188] of TServerMessage = (
    (Id: SInvalidLoginContextId; Text: SInvalidLoginContextText),
    (Id: SIncorrectSystemTimeId; Text: SIncorrectSystemTimeText),
    (Id: SNegativeUnfinishedMfgId; Text: SNegativeUnfinishedMfgText),
    (Id: SNegativeOpUnfinishedMfgId; Text: SNegativeOpUnfinishedMfgText),
    (Id: SRelativePathNotEnteredId; Text: SRelativePathNotEnteredText),
    (Id: SWrongRelativePathId; Text: SWrongRelativePathText),
    (Id: SParamMustHaveValueId; Text: SParamMustHaveValueText),
    (Id: SCrossedPeriodId; Text: SCrossedPeriodText),
    (Id: SCrossedDeptPricesPeriodId; Text: SCrossedDeptPricesPeriodText),
    (Id: SReportSettingWithOldDateId; Text: SReportSettingWithOldDateText),
    (Id: SReportSettingWithFutureDateId; Text: SReportSettingWithFutureDateText),
    (Id: SNegativeTechQuantityId; Text: SNegativeTechQuantityText),
    (Id: SDefaultStoreNotFoundId; Text: SDefaultStoreNotFoundText),
    (Id: SReportMovementWithOldDateId; Text: SReportMovementWithOldDateText),
    (Id: SReportMovementWithFutDateId; Text: SReportMovementWithFutDateText),
    (Id: SMeasureOrCoefNotFoundId; Text: SMeasureOrCoefNotFoundText),
    (Id: SProductNotSelfExistingId; Text: SProductNotSelfExistingText),
    (Id: SProductNotConstTempId; Text: SProductNotConstTempText),
    (Id: SProductParamMustHaveValueId; Text: SProductParamMustHaveValueText),
    (Id: SCannotChangeProductId; Text: SCannotChangeProductText),
    (Id: SReportStoreDealWithOldDateId; Text: SReportStoreDealWithOldDateText),
    (Id: SReportStoreDealWithOldDateId; Text: SReportStoreDealWithOldDateText),
    (Id: SCannotReportProductId; Text: SCannotReportProductText),
    (Id: SBeginingOrgOpNotFoundId; Text: SBeginingOrgOpNotFoundText),
    (Id: SOpVariantNotFoundId; Text: SOpVariantNotFoundText),
    (Id: SInvalidNoAsTextId; Text: SInvalidNoAsTextText),
    (Id: SIncorrectDatePeriodId; Text: SIncorrectDatePeriodText),
    (Id: SIncorrectIntervalId; Text: SIncorrectIntervalText),
    (Id: SFileDoesNotExistsId; Text: SFileDoesNotExistsText),
    (Id: SGetPeriodTypeNameInvalidPeriodId; Text: SGetPeriodTypeNameInvalidPeriodText),
    (Id: SGetPeriodConstInvalidArgumentId; Text: SGetPeriodConstInvalidArgumentText),
    (Id: SGetPeriodValueInvalidArgumentId; Text: SGetPeriodValueInvalidArgumentText),
    (Id: SGetPeriodFirstDateInvalidPeriodId; Text: SGetPeriodFirstDateInvalidPeriodText),
    (Id: SIncDateInvalidPeriodId; Text: SIncDateInvalidPeriodText),
    (Id: SGetPeriodLabelInvalidPeriodId; Text: SGetPeriodLabelInvalidPeriodText),
    (Id: SGetTimeUnitsCountIncorectPeriodId; Text: SGetTimeUnitsCountIncorectPeriodText),
    (Id: SInvalidIntParamValueId; Text: SInvalidIntParamValueText),
    (Id: SExecSQLErrorId; Text: SExecSQLErrorText),
    (Id: SUnknownCompanyKindId; Text: SUnknownCompanyKindText),
    (Id: SPlannedStoreDealNotCreatedId; Text: SPlannedStoreDealNotCreatedText),
    (Id: SPlannedStoreDealNotUpdatedId; Text: SPlannedStoreDealNotUpdatedText),
    (Id: SPlannedStoreDealNotAnnuledId; Text: SPlannedStoreDealNotAnnuledText),
    (Id: SPlannedStoreDealNotClosedId; Text: SPlannedStoreDealNotClosedText),
    (Id: SCannotAnnulRPDId; Text: SCannotAnnulRPDId),
    (Id: SCannotAnnulGroupId; Text: SCannotAnnulGroupText),
    (Id: SCannotCloseGroupId; Text: SCannotCloseGroupText),
    (Id: SNoCurrencyRateId; Text: SNoCurrencyRateText),
    (Id: SNoBaseCurrencyRateId; Text: SNoBaseCurrencyRateText),
    (Id: SStoreDealCustomKeyViolationId; Text: SStoreDealCustomKeyViolationText),
    (Id: SPlannedStoreDoesnotMatchId; Text: SPlannedStoreDoesnotMatchText),
    (Id: SBeginOperationNotFoundId; Text: SBeginOperationNotFoundText),
    (Id: SNoTodaySecondaryCurrencyRateId; Text: SNoTodaySecondaryCurrencyRateText),
    (Id: SNoEstimatedSecPriceId; Text: SNoEstimatedSecPriceText),
    (Id: SNoAccountMeasureCoefId; Text: SNoAccountMeasureCoefText),
    (Id: SNotEnoughStoreQuantityId; Text: SNotEnoughStoreQuantityText),
    (Id: SNoCurrencyRatesId; Text: SNoCurrencyRatesText),
    (Id: SIncorrectModelVariantId; Text: SIncorrectModelVariantText),
    (Id: SInvoiceRangeExhaustedId; Text: SInvoiceRangeExhaustedText),
    (Id: SUpdateSaleShipmentFailedId; Text: SUpdateSaleShipmentFailedText),
    (Id: SInvalidInvoiceNoId; Text: SInvalidInvoiceNoText),
    (Id: SModelExistsForSaleId; Text: SModelExistsForSaleText),
    (Id: SHasMovementsId; Text: SHasMovementsText),
    (Id: SSmallLineDetailTechQtyId; Text: SSmallLineDetailTechQtyText),
    (Id: SRowsChangedByOtherUserId; Text: SRowsChangedByOtherUserText),
    (Id: SDocNotFoundId; Text: SDocNotFoundText),
    (Id: SMoreThanOneDocId; Text: SMoreThanOneDocText),
    (Id: SLinesWithoutStagesId; Text: SLinesWithoutStagesText),
    (Id: SNormalOperationsFoundId; Text: SNormalOperationsFoundText),
    (Id: SNotLimitingModelId; Text: SNotLimitingModelText),
    (Id: SCheckOperationsSpecModelId; Text:SCheckOperationsSpecModelText),
    (Id: SModelNotCreatedId; Text: SModelNotCreatedText),
    (Id: SNoDefaultStoreId; Text: SNoDefaultStoreText),
    (Id: SExpeditionNotInsertedId; Text: SExpeditionNotInsertedText),
    (Id: SExpeditionNotUpdatedId; Text: SExpeditionNotUpdatedText),
    (Id: SQuickSalePSDNotInsertedId; Text: SQuickSalePSDNotInsertedText),
    (Id: SQuickSalePSDNotUpdatedId; Text: SQuickSalePSDNotUpdatedText),
    (Id: SQuickSaleGroupNotInsertedId; Text: SQuickSaleGroupNotInsertedText),
    (Id: SInvalidModelId; Text: SInvalidModelText),
    (Id: SNoProductDataId; Text: SNoProductDataText),
    (Id: SInactiveProductsId; Text: SInactiveProductsText),
    (Id: SListNotEnoughStoreQuantityId; Text: SListNotEnoughStoreQuantityText),
    (Id: SYouHaveNoRightsForThisOperationId; Text: SYouHaveNoRightsForThisOperationText),
    (Id: SYouHaveNoWorkDeptsForThisOperationId; Text: SYouHaveNoWorkDeptsForThisOperationText),
    (Id: SUnknownEarningTypeId; Text: SUnknownEarningTypeText),
    (Id: SCannotInsertNegativeValueInLocalNoId; Text: SCannotInsertNegativeValueInLocalNoText),
    (Id: SNegativePresenceId; Text: SNegativePresenceText),
    (Id: SOverlappingBudgetOrderItemsId; Text: SOverlappingBudgetOrderItemsText),
    (Id: SExecuteServerNotFoundId; Text: SExecuteServerNotFoundText),
    (Id: SFreeExecuteServerNotFoundId; Text: SFreeExecuteServerNotFoundText),
    (Id: SExecuteServerConnectionErrorId; Text: SExecuteServerConnectionErrorText),
    (Id: SCannotChangeSaleStoreId; Text: SCannotChangeSaleStoreText),
    (Id: SIncorrectOccupationEmployeeId; Text: SIncorrectOccupationEmployeeText),
    (Id: SRecurrentDeptWithMainOccsId; Text: SRecurrentDeptWithMainOccsText),
    (Id: SIncorrectOWDEnclosureId; Text: SIncorrectOWDEnclosureText),
    (Id: SCantCrateSDWithInactiveStoreId; Text: SCantCrateSDWithInactiveStoreText),
    (Id: SCantCrateSDWithInactiveDeptId; Text: SCantCrateSDWithInactiveDeptText),
    (Id: SCrossedProductStorePeriodId; Text: SCrossedProductStorePeriodText),
    (Id: SDateTooBigId; Text: SDateTooBigText),
    (Id: SInvalidProcessPositionsId; Text: SInvalidProcessPositionsText),
    (Id: SModelIncorrectWasteForksId; Text: SModelIncorrectWasteForksText),
    (Id: SLineIncorrectWasteForksId; Text: SLineIncorrectWasteForksText),
    (Id: SThoroughlyEngineeredExistsId; Text: SThoroughlyEngineeredExistsText),
    (Id: SCannotDeleteStoreDealNotStorno; Text: SCannotDeleteStoreDealNotStornoText),
    (Id: SCannotDeleteOperationMovementNotStorno; Text: SCannotDeleteOperationMovementNotStornoText),
    (Id: SCrossedOccShiftPeriodId; Text: SCrossedOccShiftPeriodText),
    (Id: SCrossedOccEmployeePeriodId; Text: SCrossedOccEmployeePeriodText),
    (Id: SIncorrectOccupationPeriodId; Text: SIncorrectOccupationPeriodText),
    (Id: SIncorrectOccEmployeePeriodId; Text: SIncorrectOccEmployeePeriodText),
    (Id: SIncorrectDeptParentPeriodId; Text: SIncorrectDeptParentPeriodText),
    (Id: SIncorrectDeptChildrenPeriodId; Text: SIncorrectDeptChildrenPeriodText),
    (Id: SIncorrectDeptOccPeriodId; Text: SIncorrectDeptOccPeriodText),
    (Id: SIncorrectOccDeptPeriodId; Text: SIncorrectOccDeptPeriodText),
    (Id: SCrossedShCycleBreakPeriodId; Text: SCrossedShCycleBreakPeriodText),
    (Id: STooLargePrintTreeId; Text: STooLargePrintTreeText),
    (Id: SCannotDeleteEmpMovementNotStornoID; Text: SCannotDeleteEmpMovementNotStornoText),
    (Id: SCrossedEamDayAbsencePeriodID; Text: SCrossedEamDayAbsencePeriodText),
    (Id: SCannotDeleteEmployeeDisciplineEventNotStornoId; Text: SCannotDeleteEmployeeDisciplineEventNotStornoText),
    (Id: SSDIncorrectBOIOConsumerDeptId; Text: SSDIncorrectBOIOConsumerDeptText),
    (Id: SCrossedProfessionPeriodId; Text: SCrossedProfessionPeriodText),
    (Id: SCrossedOccSalaryPeriodId; Text: SCrossedOccSalaryPeriodText),
    (Id: SIncorrectDeptPerDeptPeriodId; Text: SIncorrectDeptPerDeptPeriodText),
    (Id: SIncorrectDeptDeptPerPeriodId; Text: SIncorrectDeptDeptPerPeriodText),
    (Id: SCrossedEamShiftChangePeriodId; Text: SCrossedEamShiftChangePeriodText),
    (Id: SAnnuledPSDWithSDNotAllowedId; Text: SAnnuledPSDWithSDNotAllowedText),
    (Id: SCrossedParRelPeriodPeriodId; Text: SCrossedParRelPeriodPeriodText),
    (Id: SCrossedProductPeriodId; Text: SCrossedProductPeriodText),
    (Id: SIncorrectCommonProductPerId; Text: SIncorrectCommonProductPerText),
    (Id: SIncorrectJoinedProductPerId; Text: SIncorrectJoinedProductPerText),
    (Id: SCrossedParRelProductPeriodId; Text: SCrossedParRelProductPeriodText),
    (Id: SIncorrectParRelProdPeriodId; Text: SIncorrectParRelProdPeriodText),
    (Id: SOTPExEventsMustBeAnnuledId; Text: SOTPExEventsMustBeAnnuledText),
    (Id: SCrossedDiscEventTypePeriodId; Text: SCrossedDiscEventTypePeriodText),
    (Id: SExceptEventsMustBeAnnuledId; Text: SExceptEventsMustBeAnnuledText),
    (Id: SExceptEventHasUnnormAttacksId; Text: SExceptEventHasUnnormAttacksText),
    (Id: SExceptEventHasUnclosedTasksId; Text: SExceptEventHasUnclosedTasksText),
    (Id: SEEMustNotBeResolvedId; Text: SEEMustNotBeResolvedText),
    (Id: SEEHasUnannuledTasksId; Text: SEEHasUnannuledTasksText),
    (Id: SExceptEventMustBeAnnuledId; Text: SExceptEventMustBeAnnuledText),
    (Id: SExceptEventDamageQtyIsLessId; Text: SExceptEventDamageQtyIsLessText),
    (Id: SEEDHasAttacksWithGreaterQtyId; Text: SEEDHasAttacksWithGreaterQtyText),
    (Id: SCrossedDeptBPPeriodId; Text: SCrossedDeptBPPeriodText),
    (Id: SConsumerDeptIsNotStoreId; Text: SConsumerDeptIsNotStoreText),
    (Id: SOEBPStatusDateOutOfRangeId; Text: SOEBPStatusDateOutOfRangeText),
    (Id: SCantChgRfmlPartnerOrAccountId; Text: SCantChgRfmlPartnerOrAccountText),
    (Id: SCantDeleteFinStoreId; Text: SCantDeleteFinStoreText),
    (Id: SCannotDeleteEENotAnnulId; Text: SCannotDeleteEENotAnnulText),
    (Id: SExceptEventsIncorrectQtyId; Text: SExceptEventsIncorrectQtyText),
    (Id: SEEWithIncorrectQtyExistsId; Text: SEEWithIncorrectQtyExistsText),
    ///////(Id: SMaxConcurrentConnectionsReachedId; Text: SMaxConcurrentConnectionsReachedText),
    (Id: SCannotLoginToEarlierDateThanId; Text: SCannotLoginToEarlierDateThanText),
    ///////(Id: SMaxNamedConnectionsForComputerReachedId; Text: SMaxNamedConnectionsForComputerReachedText),
    ///////(Id: SMaxNamedConnectionsReachedId; Text: SMaxNamedConnectionsReachedText),
    ///////(Id: SMaxInternalConnectionsReachedId; Text: SMaxInternalConnectionsReachedText),
    (Id: SSaleForOTPIsIncorrectId; Text: SSaleForOTPIsIncorrectText),
    (Id: SOTPMustBeAnnuledId; Text: SOTPMustBeAnnuledText),
    (Id: SPOHasUnclosedDescendantsId; Text: SPOHasUnclosedDescendantsText),
    (Id: SParentPOIsClosedId; Text: SParentPOIsClosedText),
    (Id: SPOHasUnannuledDescendantsId; Text: SPOHasUnannuledDescendantsText),
    (Id: SParentPOIsAnnuledId; Text: SParentPOIsAnnuledText),
    (Id: SEOHasUnclosedDescendantsId; Text: SEOHasUnclosedDescendantsText),
    (Id: SParentEOIsClosedId; Text: SParentEOIsClosedText),
    (Id: SEOHasUnannuledDescendantsId; Text: SEOHasUnannuledDescendantsText),
    (Id: SParentEOIsAnnuledId; Text: SParentEOIsAnnuledText),
    (Id: SBOIOConsumerMustMatchId; Text: SBOIOConsumerMustMatchText),
    (Id: SBOIOConsumerMustDescendId; Text: SBOIOConsumerMustDescendText),
    (Id: SDifferentConsumerDeptExistsId; Text: SDifferentConsumerDeptExistsText),
    (Id: SNotDescendantConsDeptExistsId; Text: SNotDescendantConsDeptExistsText),
    (Id: SOEPBAStatusDateOutOfRangeId; Text: SOEPBAStatusDateOutOfRangeText),
    (Id: SOEPCAStatusDateOutOfRangeId; Text: SOEPCAStatusDateOutOfRangeText),
    (Id: SDptIncorrectPrcActionsExistId; Text: SDptIncorrectPrcActionsExistText),
    (Id: SOccIncorrectPrcActionsExistId; Text: SOccIncorrectPrcActionsExistText),
    (Id: SConcreteToStrategicStateId; Text: SConcreteToStrategicStateText),
    (Id: SAccessBannedId; Text: SAccessBannedText),
    (Id: SConnectionLockedByServerId; Text: SConnectionLockedByServerText),
    (Id: SConnectionClosedByServerId; Text: SConnectionClosedByServerText),
    (Id: SCannotOverrideContextDateOnProductionDbId; Text: SCannotOverrideContextDateOnProductionDbText),
    (Id: SFieldMustBeGreaterThanId; Text: SFieldMustBeGreaterThanText),
    (Id: SInvoiceInconsistentSSHId; Text: SInvoiceInconsistentSSHText),
    (Id: SDeptMustHaveCapacityGeneratorId; Text: SDeptMustHaveCapacityGeneratorText),
    (Id: SErrorInMultiDecisionForDeliveryProjectId; Text: SErrorInMultiDecisionForDeliveryProjectText),
    (Id: SPSDSinglePriceNotSetId; Text: SPSDSinglePriceNotSetText),
    (Id: SEEMustBeSingleResolvableId; Text: SEEMustBeSingleResolvableText),
    (Id: SEEHasSingleResolveTasksId; Text: SEEHasSingleResolveTasksText),
    (Id: SExceptEventHasDamagesId; Text: SExceptEventHasDamagesText),
    (Id: SExceptEventHasTasksId; Text: SExceptEventHasTasksText),
    (Id: SAccessDeniedId; Text: SAccessDeniedText),
    (Id: SNewComputerLoginNotAllowedId; Text: SNewComputerLoginNotAllowedText),
    (Id: SCantAddSpecWhenInlineModelsId; Text: SCantAddSpecWhenInlineModelsText),
    (Id: SInvalidInlineModelId; Text: SInvalidInlineModelText),
    (Id: SUserNotAllowedToDB; Text: SUserNotAllowedToDBText),
    (Id: SUserAndEmployeeNamesDiffer; Text: SUserAndEmployeeNamesDifferText),
    (Id: SParamsExportDataTooLongId; Text: SParamsExportDataTooLongText)
  );

  Keywords: array[1..3] of TKeyword = (
    (Id: SAccountMeasureKeywordId; Text: SAccountMeasureKeywordText),
    (Id: STechMeasureKeywordId; Text: STechMeasureKeywordText),
    (Id: SEstimatedSecondaryPriceKeywordId; Text: SEstimatedSecondaryPriceKeywordText));

const
  DateInfinity = '...';

{ Routines }

function FindMessageNo(const Msg: string): Integer;
var
  SL: TStringList;
  i, k, p: Integer;
  Offset: Integer;
  Found: Boolean;
begin
  SL:= TStringList.Create;
  try
    SL.Delimiter:= IdDelimiter;
    SL.StrictDelimiter:= True;

    Result:= -1;
    for i:= Low(ServerMessages) to High(ServerMessages) do
      begin
        SL.DelimitedText:= ServerMessages[i].Id;
        Assert(SL.Count > 0);

        k:= 0;
        Found:= True;
        Offset:= 1;
        while Found and (k < SL.Count) do
          begin
            p:= PosEx(SL[k], Msg, Offset);

            Found:= Found and (p > 0);

            if Found then
              Offset:= p + Length(SL[k]);

            Inc(k);
          end;  { while }

        if Found then
          begin
            Result:= i;
            Exit;
          end;  { if }
      end;
  finally
    FreeAndNil(SL);
  end;
end;

function FindChar(const s: string; ch: Char): Integer;
var
  i: Integer;
begin
  Result:= -1;
  i:= 1;
  while (i <= Length(s)) do
    begin
      if (s[i] = ch) then
        begin
          if (i < Length(s)) and (s[i + 1] = ch) then
            Inc(i)
          else
            begin
              Result:= i;
              Exit;
            end;  { else }
        end;  { if }

      Inc(i);
    end;  { while }
end;

function DeleteDoubledChar(const s: string; ch: Char): string;
begin
  Result:= StringReplace(s, ch + ch , ch, [rfReplaceAll, rfIgnoreCase]);
end;

procedure ParseParam(const Param: string; var ParamName, ParamValue: string);
var
  ColonCharPos, EqualCharPos: Integer;
  ParamType: string;
begin
  ColonCharPos:= Pos(':', Param);

  if (ColonCharPos <= 0) then
    begin
      ParamName:= '';
      ParamValue:= '';
      Exit;
    end;  { if }

  ParamName:= Trim(Copy(Param, 1, ColonCharPos - 1));

  EqualCharPos:= Pos('=', Param);

  if (EqualCharPos <= 0) or (EqualCharPos <= ColonCharPos) then
    begin
      ParamName:= '';
      ParamValue:= '';
      Exit;
    end;  { if }

  ParamType:= Trim(Copy(Param, ColonCharPos + 1, EqualCharPos - ColonCharPos - 1));

  ParamValue:= Trim(Copy(Param, EqualCharPos + 1, Length(Param)));

  case UpCase(ParamType[1]) of
    'D':
      if (ParamValue = '') then
        ParamValue:= DateInfinity
      else
        ParamValue:= DateToStr(InternalStrToDate(ParamValue));
    'T':
      if (ParamValue = '') then
        ParamValue:= DateInfinity
      else
        ParamValue:= TimeToStr(InternalStrToTime(ParamValue));
    'I':
      ParamValue:= IntToStr(InternalStrToInt(ParamValue));
    'F':
      ParamValue:= FloatToStr(InternalStrToFloat(ParamValue));
    'S': ;
      // do nothing -- already decoded
  end;  { case }
end;

function GetMessageParamsPart(const Msg: string; const MsgId: string): string;
var
  MsgIdPos: Integer;
  ClosingBracketPos: Integer;
  MsgAfterId: string;
  SL: TStringList;
  i, p: Integer;
  Offset: Integer;
begin
  Result:= '';

  SL:= TStringList.Create;
  try
    SL.Delimiter:= IdDelimiter;
    SL.StrictDelimiter:= True;
    SL.DelimitedText:= MsgId;
    Assert(SL.Count > 0);

    Offset:= 1;
    for i:= 0 to SL.Count - 2 do
      begin
        p:= PosEx(SL[i], Msg, Offset);
        Assert(p > 0);
        Offset:= p + Length(SL[i]);
      end;

    MsgIdPos:= PosEx(SL[SL.Count-1], Msg, Offset);
  finally
    FreeAndNil(SL);
  end;

  Assert(MsgIdPos > 0);

  MsgAfterId:= TrimLeft(Copy(Msg, MsgIdPos + Length(MsgId), Length(Msg)));

  if (MsgAfterId <> '') and (MsgAfterId[1] = '(') then
    begin
      ClosingBracketPos:= FindChar(MsgAfterId, ')');
      if (ClosingBracketPos > 0) then
        Result:= Trim(Copy(MsgAfterId, 2, ClosingBracketPos - 2));
    end;
end;

procedure ParseMessageParams(const MsgParamsPart: string; MsgParams: TStrings);
var
  i, j: Integer;
  CurrentParam: string;
  ParamName: string;
  ParamValue: string;
begin
  i:= 1;
  while (i <= Length(MsgParamsPart)) do
    begin
      j:= FindChar(Copy(MsgParamsPart, i, Length(MsgParamsPart)), ',');

      if (j = -1) then
        j:= Length(MsgParamsPart) + 1;

      CurrentParam:= Trim(Copy(MsgParamsPart, i, j - 1));
      CurrentParam:= InternalDecodeString(CurrentParam);

      ParseParam(CurrentParam, ParamName, ParamValue);

      if (ParamName <> '') then
        MsgParams.ValuesEx[ParamName]:= ParamValue;

      i:= i + j;
    end;  { while }
end;

function FormatMessage(const Msg: string; MsgParams: TStrings): string;
var
  i: Integer;
  ParamName: string;
begin
  Result:= Msg;

  if (Pos('%', Result) > 0) then
    for i:= 0 to MsgParams.Count - 1 do
      begin
        ParamName:= MsgParams.Names[i];
        if (ParamName <> '') then
          Result:=
            StringReplace(
              Result,
              '%' + ParamName + '%',
              MsgParams.ValuesEx[ParamName],
              [rfReplaceAll, rfIgnoreCase]);
      end;  { for }

  Result:= DeleteDoubledChar(Result, '%');
end;

function ReplaceKeywords(const Msg: string): string;
var
  i: Integer;
begin
  Result:= Msg;
  for i:= Low(Keywords) to High(Keywords) do
    Result:=
      StringReplace(
        Result,
        Keywords[i].Id,
        Keywords[i].Text,
        [rfReplaceAll, rfIgnoreCase]);
end;

function DecodeMessage(const Msg: string): string;
var
 MsgNo: Integer;
 MsgParams: TStrings;
begin
  MsgNo:= FindMessageNo(Msg);

  if (MsgNo <> -1) then
    begin
      MsgParams:= TStringList.Create;
      try
        ParseMessageParams(GetMessageParamsPart(Msg, ServerMessages[MsgNo].Id), MsgParams);
        Result:= FormatMessage(ServerMessages[MsgNo].Text, MsgParams);
        Result:= ReplaceKeywords(Result);

        if EndsStr(SLineBreak, Result) then
          SetLength(Result, Length(Result) - 2);
      finally
        FreeAndNil(MsgParams);
      end;  { try }

      Result:= DecodeDBTextMessage(Result);
    end
  else
    Result:= '';
end;

function DecodeDBTextMessage(const Msg: string): string;

  procedure FindDbMessage(const AStartInd: Integer; out MessageFound: Boolean; out MessagePos: TDbMessagePos);
  var
    MessageStartPos, MessageEndPos: Integer;
  begin
    MessageFound:= False;

    MessageStartPos:= PosEx(DBMessagePrefix, Msg, AStartInd);

    if (MessageStartPos > 0) then
      begin
        MessageEndPos:= PosEx(DBMessageSuffix, Msg, MessageStartPos + DBMessagePrefixLength);

        if (MessageEndPos > 0) then
          begin
            MessageFound:= True;
            MessagePos.StartPos:= MessageStartPos;
            MessagePos.EndPos:= MessageEndPos;
          end;
      end;
  end;

  function DecodeSingleDBMessage(const Msg: string): string;
  begin
    if DBTextMessages.ContainsKey(Msg) then
      Result:= DBTextMessages.Items[Msg]
    else
      Result:= Msg;
  end;

var
  MessageFound: Boolean;
  MessagePos: TDbMessagePos;
  Messages: array of TDbMessagePos;
  MessagesCount, SearchPos, i: Integer;
  DecodedMessage: TStringBuilder;
begin
  MessagesCount:= 0;
  SetLength(Messages, MessagesCount + 1);
  SearchPos:= 1;
  FindDbMessage(SearchPos, MessageFound, MessagePos);
  while MessageFound do
    begin
      Inc(MessagesCount);
      SetLength(Messages, MessagesCount + 1);
      Messages[MessagesCount]:= MessagePos;

      SearchPos:= MessagePos.EndPos + 1;
      FindDbMessage(SearchPos, MessageFound, MessagePos);
    end;

  if (MessagesCount = 0) then
    Result:= Msg
  else
    begin
      if (MessagesCount = 1) and
         (Messages[1].StartPos = 1) and
         (Messages[1].EndPos = Length(Msg)) then
        Result:= DecodeSingleDBMessage(Msg)
      else
        begin
          DecodedMessage:= TStringBuilder.Create;
          try
            DecodedMessage.Append(LeftStr(Msg, Messages[1].StartPos - 1));
            for i:= 1 to MessagesCount do
              begin
                DecodedMessage.Append(DecodeSingleDBMessage(SubString(Msg, Messages[i].StartPos, Messages[i].EndPos)));

                if (i < MessagesCount) then
                  DecodedMessage.Append(SubString(Msg, Messages[i].EndPos + 1, Messages[i + 1].StartPos - 1))
                else
                  DecodedMessage.Append(SubString(Msg, Messages[i].EndPos + 1, Length(Msg)));
              end;

            Result:= DecodedMessage.ToString;
          finally
            FreeAndNil(DecodedMessage);
          end;
        end;
    end;

  Result:= uClientApp.ReplaceAppParams(Result);
end;

function GetMessageId(const Msg: string): string;
var
  MsgNo: Integer;
begin
  MsgNo:= FindMessageNo(Msg);

  if (MsgNo <> -1) then
    Result:= ServerMessages[MsgNo].Id
  else
    Result:= '';
end;

procedure QuickSortServerMessages(L, R: Integer);
var
  I, J, P: Integer;
  Temp: TServerMessage;
begin
  repeat
    I := L;
    J := R;
    P := (L + R) shr 1;
    repeat
      while (ServerMessages[I].Id > ServerMessages[P].Id) do Inc(I);
      while (ServerMessages[J].Id < ServerMessages[P].Id) do Dec(J);
      if I <= J then
      begin
        Temp:= ServerMessages[I];
        ServerMessages[I]:= ServerMessages[J];
        ServerMessages[J]:= Temp;

        if P = I then
          P := J
        else if P = J then
          P := I;
        Inc(I);
        Dec(J);
      end;
    until I > J;
    if L < J then QuickSortServerMessages(L, J);
    L := I;
  until I >= R;
end;

function GetXMLTextMessages(const AResourceName: string): IXMLTextMessages;
const
  RT_HTML = MakeIntResource(23);
var
  RS: TResourceStream;
begin
  RS:= TResourceStream.Create(FindResourceHInstance(HInstance), AResourceName, RT_HTML);
  try
    Result:= LoadTextMessagesFromStream(RS);
  finally
    FreeAndNil(RS);
  end;
end;

procedure InitializeServerMessages;

  procedure AddResourceMessages(const AResourceName: string);
  var
    XMLServerMessages: IXMLTextMessages;
    i: Integer;
  begin
    XMLServerMessages:= GetXMLTextMessages(AResourceName);

    SetLength(ServerMessages, Length(ServerMessagesConst) + XMLServerMessages.Count);

    for i:= 0 to Length(ServerMessagesConst) - 1 do
      ServerMessages[i]:= ServerMessagesConst[i + 1];  // ServerMessagesConst is 1-based

    for i:= Length(ServerMessagesConst) to Length(ServerMessages) - 1 do
      begin
        ServerMessages[i].Id:= XMLServerMessages[i - Length(ServerMessagesConst)].Id;
        ServerMessages[i].Text:= XMLServerMessages[i - Length(ServerMessagesConst)].Text;
      end;
  end;

begin
  AddResourceMessages('ServerMessagesXML');
  QuickSortServerMessages(Low(ServerMessages), High(ServerMessages));
end;

procedure InitializeDBTextMessages;

  procedure AddResourceMessages(const AResourceName: string);
  var
    XMLDBTextMessages: IXMLTextMessages;
    i: Integer;
  begin
    XMLDBTextMessages:= GetXMLTextMessages(AResourceName);

    for i:= 0 to XMLDBTextMessages.Count - 1 do
      DBTextMessages.Add(XMLDBTextMessages[i].Id, VarToStr(XMLDBTextMessages[i].Text));
  end;

begin
  DBTextMessages:= TDictionary<string, string>.Create;
  AddResourceMessages('DBTextMessagesXML');
end;

procedure FinalizeDBTextMessages;
begin
  FreeAndNil(DBTextMessages);
end;

initialization
  InitializeServerMessages;
  InitializeDBTextMessages;

finalization
  FinalizeDBTextMessages;

end.
