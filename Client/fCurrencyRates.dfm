inherited fmCurrencyRates: TfmCurrencyRates
  Left = 367
  Top = 214
  Caption = #1050#1091#1088#1089#1086#1074#1077' '#1085#1072' '#1042#1072#1083#1091#1090#1080' '#1079#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
  ClientHeight = 319
  ClientWidth = 384
  ExplicitWidth = 390
  ExplicitHeight = 345
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 284
    Width = 384
    ExplicitTop = 284
    ExplicitWidth = 384
    inherited pnlOKCancel: TPanel
      Left = 116
      Visible = False
      ExplicitLeft = 116
    end
    inherited pnlClose: TPanel
      Left = 27
      Visible = True
      ExplicitLeft = 27
    end
    inherited pnlApply: TPanel
      Left = 295
      Visible = False
      ExplicitLeft = 295
    end
  end
  object pnlTop: TPanel [1]
    Left = 0
    Top = 0
    Width = 384
    Height = 29
    Align = alTop
    TabOrder = 1
    object lblRateDate: TLabel
      Left = 11
      Top = 8
      Width = 39
      Height = 13
      Caption = #1047#1072' '#1076#1072#1090#1072
    end
    object btnLastMissingCurrencyRateDate: TSpeedButton
      Left = 200
      Top = 3
      Width = 181
      Height = 22
      Action = actLastMissingCurrencyRateDate
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    inline frRateDate: TfrDateFieldEditFrame
      Left = 58
      Top = 4
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 58
      ExplicitTop = 4
      inherited dsData: TDataSource
        DataSet = pdsParams
      end
    end
  end
  object pnlGrid: TPanel [2]
    Left = 0
    Top = 29
    Width = 384
    Height = 255
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object grdMain: TAbmesDBGrid
      Left = 5
      Top = 5
      Width = 374
      Height = 245
      Align = alClient
      AllowedOperations = [alopUpdateEh]
      DataSource = dsData
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Microsoft Sans Serif'
      FooterFont.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Microsoft Sans Serif'
      TitleFont.Style = []
      OnExit = grdMainExit
      OnGetCellParams = grdMainGetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CURRENCY_NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1042#1072#1083#1091#1090#1072
          Width = 158
        end
        item
          EditButtons = <>
          FieldName = 'CURRENCY_ABBREV'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'SCALE'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1052#1072#1097#1072#1073
          Width = 56
        end
        item
          Color = 14803425
          EditButtons = <>
          FieldName = 'FIXING'
          Footers = <>
          Title.Alignment = taCenter
        end>
    end
  end
  inherited alActions: TActionList
    Top = 112
    inherited actForm: TAction
      Caption = #1050#1091#1088#1089#1086#1074#1077' '#1085#1072' '#1042#1072#1083#1091#1090#1080' '#1079#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
    end
    object actLastMissingCurrencyRateDate: TAction
      OnExecute = actLastMissingCurrencyRateDateExecute
      OnUpdate = actLastMissingCurrencyRateDateUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 40
    Top = 144
  end
  inherited cdsData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCurrencyRates'
    ConnectionBroker = dmMain.conCommon
    AfterOpen = cdsDataAfterOpen
    BeforeInsert = cdsDataBeforeInsert
    BeforePost = cdsDataBeforePost
    Left = 8
    Top = 144
    object cdsDataCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object cdsDataCURRENCY_NAME: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cdsDataSCALE: TAbmesFloatField
      FieldName = 'SCALE'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object cdsDataRATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RATE_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object cdsDataFIXING: TAbmesFloatField
      DisplayLabel = #1060#1080#1082#1089#1080#1085#1075
      FieldName = 'FIXING'
      OnGetText = FixingAndUserRateGetText
      OnSetText = FixingAndUserRateSetText
      DisplayFormat = ',0.00000'
    end
  end
  object pdsParams: TParamDataSet
    DataSet = cdsData
    Left = 8
    Top = 176
    object pdsParamsRATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RATE_DATE'
      OnChange = pdsParamsRATE_DATEChange
    end
  end
  object dsParams: TDataSource
    DataSet = pdsParams
    Left = 40
    Top = 176
  end
  object cdsLastMissingCurrencyRateDate: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvLastMissingCurrencyRateDate'
    ConnectionBroker = dmMain.conCommon
    Left = 136
    Top = 168
    object cdsLastMissingCurrencyRateDateLAST_MISSING_CR_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_MISSING_CR_DATE'
    end
  end
end
