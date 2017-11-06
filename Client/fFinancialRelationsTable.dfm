inherited fmFinancialRelationsTable: TfmFinancialRelationsTable
  Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1090#1085#1086#1096#1077#1085#1080#1103' '#1089' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
  ClientHeight = 648
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 613
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 613
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 597
      inherited pnlNavigator: TPanel
        Top = 43
        Width = 1001
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
        object tlbToggles: TToolBar
          Left = 977
          Top = 0
          Width = 24
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbToggles'
          Images = dmMain.ilActions
          TabOrder = 3
          object btnRealAndPotential: TToolButton
            Left = 0
            Top = 0
            Action = actRealAndPotential
            AllowAllUp = True
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 67
        Width = 1001
        Height = 530
        FooterRowCount = 1
        FooterParams.Color = 15258325
        ParentFont = False
        TitleParams.MultiTitle = True
      end
      object pnlHeader: TPanel
        Left = 0
        Top = 0
        Width = 1001
        Height = 37
        Align = alTop
        TabOrder = 2
        object lblPartner: TLabel
          Left = 8
          Top = 11
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
        end
        object lblDateUnit: TLabel
          Left = 480
          Top = 11
          Width = 84
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
        end
        object lblDateUnitCount: TLabel
          Left = 674
          Top = 11
          Width = 64
          Height = 13
          Caption = #1041#1088#1086#1081' '#1089#1090#1098#1087#1082#1080
        end
        object lblDatePeriod: TLabel
          Left = 804
          Top = 11
          Width = 40
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090
        end
        object pnlDateUnit: TPanel
          Left = 569
          Top = 7
          Width = 84
          Height = 22
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 15000804
          TabOrder = 0
        end
        object pnlDateUnitCount: TPanel
          Left = 743
          Top = 7
          Width = 40
          Height = 22
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 15000804
          TabOrder = 1
        end
        inline frDateInterval: TfrDateIntervalFrame
          Left = 848
          Top = 7
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 2
          TabStop = True
          inherited edtInterval: TJvDBComboEdit
            ParentFlat = False
          end
          inherited dsData: TDataSource
            DataSet = pdsGridDataParams
          end
        end
        object pnlPartnerOuter: TPanel
          Left = 64
          Top = 7
          Width = 393
          Height = 22
          BevelOuter = bvNone
          TabOrder = 3
          object pnlPartnerName: TPanel
            Left = 0
            Top = 0
            Width = 303
            Height = 22
            Align = alClient
            Alignment = taLeftJustify
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 15000804
            TabOrder = 0
          end
          object pnlPartnerNo: TPanel
            Left = 303
            Top = 0
            Width = 90
            Height = 22
            Align = alRight
            Alignment = taLeftJustify
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 15000804
            TabOrder = 1
          end
        end
      end
      object pnlHeaderSeparator: TPanel
        Left = 0
        Top = 37
        Width = 1001
        Height = 6
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 232
    Top = 280
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conFinance
    Params = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '5'
      end
      item
        DataType = ftFloat
        Name = 'FIN_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end>
    ProviderName = 'prvFinancialRelationsTable'
    Left = 200
    Top = 280
  end
  inherited alActions: TActionList
    Left = 320
    Top = 248
    inherited actForm: TAction
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1090#1085#1086#1096#1077#1085#1080#1103' '#1089' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actRealAndPotential: TAction
      GroupIndex = 1
      Hint = #1056#1077#1072#1083#1077#1085' '#1080' '#1086#1095#1072#1082#1074#1072#1085' '#1087#1083#1072#1085
      ImageIndex = 51
      OnExecute = actRealAndPotentialExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Left = 200
    Top = 312
    object pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_STATUS_CODE'
    end
    object pdsGridDataParamsFIN_PROCESS_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'FIN_PROCESS_CODE'
    end
    object pdsGridDataParamsHAS_DOCUMENT_IDENTIFIER: TAbmesFloatField
      DisplayLabel = #1060#1080#1085#1072#1085#1089#1086#1074' '#1057#1090#1072#1090#1091#1089
      FieldName = 'HAS_DOCUMENT_IDENTIFIER'
    end
    object pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'CHOSEN_COMPANIES'
      OnChange = pdsGridDataParamsCHOSEN_COMPANIESChange
      Size = 4000
    end
    object pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DATE_UNIT_CODE'
    end
    object pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DATE_UNIT_COUNT'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      ConstraintErrorMessage = 'DATE_UNIT_CODE'
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      ProviderFlags = [pfInWhere]
    end
    object pdsGridDataParams_COMPANY_CODE: TAbmesFloatField
      FieldName = '_COMPANY_CODE'
    end
    object pdsGridDataParams_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = '_COMPANY_SHORT_NAME'
      Size = 50
    end
    object pdsGridDataParams_COMPANY_NO: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = '_COMPANY_NO'
    end
    object pdsGridDataParams_FIN_PROCESS_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FIN_PROCESS_ABBREV'
      LookupDataSet = cdsFinProcesses
      LookupKeyFields = 'PROCESS_CODE'
      LookupResultField = 'PROCESS_ABBREV'
      KeyFields = 'FIN_PROCESS_CODE'
      Size = 100
      Lookup = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 232
    Top = 312
  end
  inherited dsData: TDataSource
    Left = 232
    Top = 248
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 200
    Top = 248
  end
  object cdsTimeUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Filtered = True
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvTimeUnits'
    StoreDefs = True
    Left = 320
    Top = 280
    object cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsTimeUnitsTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object cdsTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField
      FieldName = 'KEY_FIELD_NAME'
      Size = 50
    end
    object cdsTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField
      FieldName = 'YEAR_UNIT_NO_NAME'
      Size = 50
    end
    object cdsTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DEFAULT_UNIT_COUNT'
    end
    object cdsTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField
      FieldName = 'MIN_UNIT_COUNT'
    end
    object cdsTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField
      FieldName = 'MAX_UNIT_COUNT'
    end
    object cdsTimeUnitsTHE_DATE_UNIT_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME_PLURAL'
      Size = 50
    end
  end
  object cdsFinProcesses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <>
    ProviderName = 'prvFinProcesses'
    Left = 352
    Top = 280
    object cdsFinProcessesPROCESS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_CODE'
    end
    object cdsFinProcessesPROCESS_ABBREV: TAbmesWideStringField
      DisplayWidth = 8
      FieldName = 'PROCESS_ABBREV'
      Size = 100
    end
    object cdsFinProcessesPROCESS_NAME: TAbmesWideStringField
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
  end
  object pgdData: TPrintDBGridEh
    DBGridEh = grdData
    Options = []
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 320
    Top = 312
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C666E696C5C66636861
      727365743020417269616C3B7D7B5C66315C666E696C5C666368617273657432
      30347B5C2A5C666E616D6520417269616C3B7D417269616C204359523B7D7B5C
      66325C666E696C5C66636861727365743230347B5C2A5C666E616D652054696D
      6573204E657720526F6D616E3B7D54696D6573204E657720526F6D616E204359
      523B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6C616E
      67313033335C756C5C625C695C6673333220466F726D43617074696F6E5C6C61
      6E67313032365C66315C7061720D0A5C756C6E6F6E655C62305C667331365C70
      61720D0A5C706172645C6C616E67313033335C69305C66305C6673323220706C
      626C506172746E65725C6C616E67313032365C6631203A205C6C616E67313033
      3320505C6630204152544E45525C6631205F4E414D455C7461625C66305C7461
      6220504152544E45525F4E4F5C66315C7061720D0A5C663020706C626C446174
      65556E69745C6C616E67313032365C6631203A205C6C616E67313033335C6630
      20444154455C6631205F554E49545C7461625C7461625C663020706C626C4461
      7465556E6974436F756E745C6C616E67313032365C6631203A205C6C616E6731
      3033335C663020444154455F554E49545C6631205F434F554E545C7461625C74
      61625C663020706C626C44617465496E74657276616C5C6C616E67313032365C
      6631203A205C6C616E67313033335C663020444154455F494E54455256414C5C
      7061720D0A5C6C616E67313032365C66325C667332365C7061720D0A7D0D0A00}
  end
end
