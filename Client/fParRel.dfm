inherited fmParRel: TfmParRel
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1089#1082#1080' '#1052#1054#1044#1045#1083' '#1079#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %BorderRelTypeName%'
  ClientWidth = 1007
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 1007
    inherited pnlOKCancel: TPanel
      Left = 739
    end
    inherited pnlClose: TPanel
      Left = 650
    end
    inherited pnlApply: TPanel
      Left = 918
      Visible = False
    end
    inherited pnlDataButtons: TPanel
      Width = 481
      inherited btnDeleteData: TBitBtn
        Left = 252
        TabOrder = 2
      end
      inherited btnEditData: TBitBtn
        Left = 366
        TabOrder = 3
      end
      object btnCreateLike: TBitBtn
        Left = 122
        Top = 2
        Width = 121
        Height = 25
        Action = actCreateLike
        Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 1
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 1007
    inherited pnlGrid: TPanel
      Top = 68
      Width = 991
      Height = 250
      inherited pnlNavigator: TPanel
        Width = 991
        object lblFormCaption: TLabel [0]
          Left = 432
          Top = 8
          Width = 326
          Height = 13
          Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1089#1082#1080' '#1052#1054#1044#1045#1083' '#1079#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %BorderRelTypeName%'
          Visible = False
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbDocs: TToolBar
          Left = 325
          Top = 0
          Width = 138
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          object sepDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDocs'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlDocs: TPanel
            Left = 8
            Top = 0
            Width = 94
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = '%ParRelPeriodAbbrev% '#1042#1088#1084#1048#1085#1090
            TabOrder = 0
          end
          object btnDocs: TToolButton
            Left = 102
            Top = 0
            ImageIndex = 1
            OnClick = btnDocsClick
          end
        end
        object tlbPastPresentFuturePeriods: TToolBar
          Left = 248
          Top = 0
          Width = 77
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbPastPresentFuturePeriods'
          Images = dmMain.ilActions
          TabOrder = 4
          object sepPastPresentFuturePeriods: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepPastPresentFuturePeriods'
            Style = tbsSeparator
          end
          object btnPastPeriods: TSpeedButton
            Left = 8
            Top = 0
            Width = 23
            Height = 24
            Action = actPastPeriods
            AllowAllUp = True
            GroupIndex = 2
            Flat = True
            Transparent = False
          end
          object btnPresentPeriods: TSpeedButton
            Left = 31
            Top = 0
            Width = 23
            Height = 24
            Action = actPresentPeriods
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Flat = True
            Transparent = False
          end
          object btnFuturePeriods: TSpeedButton
            Left = 54
            Top = 0
            Width = 23
            Height = 24
            Action = actFuturePeriods
            AllowAllUp = True
            GroupIndex = 4
            Down = True
            Flat = True
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 991
        Height = 226
        UseMultiTitle = True
        Columns = <
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'HAS_DOC_ITEMS'
            Footers = <>
            Title.Caption = #1048' '#1048' '#1054
            Width = 13
          end
          item
            EditButtons = <>
            FieldName = '_SHOW_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = 
              #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1054#1073#1077#1082#1090#1086#1074#1072' '#1063#1072#1089#1090'|'#1058#1055' '#1047#1072#1076#1098 +
              #1088#1078#1072#1097#1086' '#1085#1072' '#1048#1055' '#1079#1072' %BorderRelTypeStoreAction%'
            Width = 100
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_RIGHT_ARROW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Symbol'
            Font.Style = []
            Footers = <>
            Title.Caption = #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1054#1073#1077#1082#1090#1086#1074#1072' '#1063#1072#1089#1090'| '
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = '_SHOW_TRANSPORT_DURATION_DAYS'
            Footers = <>
            Title.Caption = #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1054#1073#1077#1082#1090#1086#1074#1072' '#1063#1072#1089#1090'|'#1055#1077#1088' '#1044#1074#1078
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = '_PARTNER_OFFICE_NAME'
            Footers = <>
            LookupParams.LookupCache = False
            Title.Caption = 
              #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1054#1073#1077#1082#1090#1086#1074#1072' '#1063#1072#1089#1090'|'#1058#1055' '#1085#1072' %' +
              'BorderRelTypeName% '#1079#1072' %BorderRelTypePartnerStoreAction%'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '_SHOW_MED_COMPANY_SHORT_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1089#1088#1077#1076#1085#1080#1082
            Width = 129
          end
          item
            EditButtons = <>
            FieldName = '_SHOW_FIN_PARTNER_SHORT_NAME'
            Footers = <>
            Title.Caption = #1057#1090#1088#1072#1085#1072' '#1087#1086' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1054#1090#1085#1086#1096#1077#1085#1080#1077
            Width = 130
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_SHOW_CURRENCY_ABBREV'
            Footers = <>
            Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080'|'#1042#1080#1076' '#1042#1072#1083#1091#1090#1072
            Width = 40
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_SHOW_SHIPMENT_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080'|'#1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076
            Width = 60
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_SHOW_IS_PARTNER_TRANSPORT'
            Footers = <>
            Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080'|'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1090#1088#1072#1085#1089#1087#1086#1088#1090
            Width = 75
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_HAS_CUSTOMHOUSE'
            Footers = <>
            Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080'|'#1052#1080#1090'- '#1085#1080#1094#1072
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'AUTHORIZED_SPEC_FIN_MODEL_CNT'
            Footers = <>
            Title.Caption = 
              #1055#1088#1080#1085#1094#1080#1087#1085#1080' '#1052#1054#1044#1045#1083'-'#1080' - '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1079#1072' %BorderRelTypePartnerStoreActio' +
              'n% - '#1041#1088#1086#1081' '#1042#1072#1083#1080#1076#1080#1088#1072#1085#1080
            Width = 100
          end>
      end
    end
    inline frPartner: TfrPartnerExFieldEditFrame
      Left = 8
      Top = 8
      Width = 991
      Height = 60
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Align = alTop
      Constraints.MaxHeight = 155
      Constraints.MinHeight = 49
      TabOrder = 1
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 991
        Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' - %BorderRelTypeName% '
        inherited pnlNameAndButtons: TPanel
          Width = 566
          inherited pnlRightButtons: TPanel
            Left = 530
          end
          inherited pnlPartnerName: TPanel
            Width = 530
            DesignSize = (
              530
              28)
            inherited edtPartnerName: TDBEdit
              Width = 517
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 531
            end
          end
          inherited pnlNameAndButtonsTop: TPanel
            Width = 566
            inherited lblPartner: TLabel
              Width = 76
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 870
        end
        inherited pnlPartnerCode: TPanel
          inherited lblPartnerCode: TLabel
            Width = 19
          end
        end
        inherited frPartnerStatus: TfrCompanyStatus
          inherited lblCurrentStatus: TLabel
            Width = 34
          end
          inherited lblReachMonths: TLabel
            Width = 6
          end
          inherited lblExistanceMonths: TLabel
            Width = 6
          end
          inherited lblMonths: TLabel
            Width = 11
          end
          inherited dsData: TDataSource
            DataSet = frPartner.cdsPartner
          end
        end
        inherited pnlPriority: TPanel
          inherited lblPriority: TLabel
            Width = 38
          end
        end
        inherited pnlCountry: TPanel
          Left = 949
        end
        inherited pnlParRelButton: TPanel
          Left = 876
        end
      end
      inherited dsData: TDataSource
        DataSet = cdsData
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 96
    Top = 184
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryParRelPeriods
    Filtered = True
    FieldDefs = <
      item
        Name = 'PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BORDER_REL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PAR_REL_PERIOD_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'PARTNER_OFFICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TRANSPORT_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'MEDIATOR_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MEDIATOR_COMPANY_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SHIPMENT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_PARTNER_TRANSPORT'
        DataType = ftFloat
      end
      item
        Name = 'CUSTOMHOUSE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'AUTHORIZED_SPEC_FIN_MODEL_CNT'
        DataType = ftFloat
      end
      item
        Name = 'IS_PAST'
        DataType = ftFloat
      end
      item
        Name = 'IS_PRESENT'
        DataType = ftFloat
      end
      item
        Name = 'IS_FUTURE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_CLASS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_CURRENCY'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_STORE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_TRANSPORT_DUR_DAYS'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_MEDIATOR_COMPANY'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_SHIPMENT_TYPE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_IS_PARTNER_TRANSPORT'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_CUSTOMHOUSE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'INHRT_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'INHRT_TRANSPORT_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_MEDIATOR_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_MED_COMPANY_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'INHRT_SHIPMENT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_IS_PARTNER_TRANSPORT'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_CUSTOMHOUSE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_PARTNER_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'OVERRIDE_FIN_PARTNER'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_FIN_PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_FIN_PARTNER_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'qryPRPerPriceModifiers'
        DataType = ftDataSet
      end
      item
        Name = 'qrySpecFinModels'
        DataType = ftDataSet
      end>
    IndexFieldNames = 'BEGIN_DATE;PAR_REL_PERIOD_CODE'
    BeforeInsert = cdsGridDataBeforeInsert
    BeforeEdit = cdsGridDataBeforeEdit
    BeforePost = cdsGridDataBeforePost
    BeforeDelete = cdsGridDataBeforeDelete
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    Left = 64
    Top = 184
    object cdsGridDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataPAR_REL_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090
      FieldName = 'BEGIN_DATE'
      OnChange = cdsGridDataBEGIN_DATEChange
      OnGetText = cdsGridDataBEGIN_DATEGetText
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090
      FieldName = 'END_DATE'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '#1085#1072' '#1048#1055' '#1079#1072' %BorderRelTypeStoreAction%'
      FieldName = 'STORE_CODE'
      OnChange = cdsGridDataSTORE_CODEChange
    end
    object cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsGridDataPARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_OFFICE_CODE'
    end
    object cdsGridDataTRANSPORT_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1079#1072' '#1044#1074#1080#1078#1077#1085#1080#1077
      FieldName = 'TRANSPORT_DURATION_DAYS'
      FieldValueType = fvtInteger
    end
    object cdsGridDataMEDIATOR_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1088#1077#1076#1085#1080#1082
      FieldName = 'MEDIATOR_COMPANY_CODE'
      OnChange = cdsGridDataMEDIATOR_COMPANY_CODEChange
    end
    object cdsGridDataMEDIATOR_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'MEDIATOR_COMPANY_SHORT_NAME'
      ProviderFlags = []
    end
    object cdsGridDataSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsGridDataIS_PARTNER_TRANSPORT: TAbmesFloatField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090
      FieldName = 'IS_PARTNER_TRANSPORT'
      DisplayBoolValues = #1055#1072#1088#1090#1085#1100#1086#1088';'#1048#1055
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsGridDataAUTHORIZED_SPEC_FIN_MODEL_CNT: TAbmesFloatField
      FieldName = 'AUTHORIZED_SPEC_FIN_MODEL_CNT'
      ProviderFlags = []
    end
    object cdsGridDataIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridData_PARTNER_OFFICE_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1085#1072' %BorderRelTypeName% '#1079#1072' %BorderRelTypePartnerStoreAction%'
      FieldKind = fkLookup
      FieldName = '_PARTNER_OFFICE_NAME'
      LookupDataSet = cdsPartnerOffices
      LookupKeyFields = 'OFFICE_CODE'
      LookupResultField = 'OFFICE_NAME'
      KeyFields = 'PARTNER_OFFICE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_CURRENCY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076
      FieldKind = fkLookup
      FieldName = '_SHIPMENT_TYPE_ABBREV'
      LookupDataSet = cdsShipmentTypes
      LookupKeyFields = 'SHIPMENT_TYPE_CODE'
      LookupResultField = 'SHIPMENT_TYPE_ABBREV'
      KeyFields = 'SHIPMENT_TYPE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_CUSTOMHOUSE_NAME: TAbmesWideStringField
      DisplayLabel = #1052#1080#1090#1085#1080#1094#1072
      FieldKind = fkLookup
      FieldName = '_CUSTOMHOUSE_NAME'
      LookupDataSet = cdsCustomhouses
      LookupKeyFields = 'CUSTOMHOUSE_CODE'
      LookupResultField = 'CUSTOMHOUSE_NAME'
      KeyFields = 'CUSTOMHOUSE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_HAS_CUSTOMHOUSE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_HAS_CUSTOMHOUSE'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsGridData_RIGHT_ARROW: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_RIGHT_ARROW'
      Size = 1
      Calculated = True
    end
    object cdsGridData_SHIPMENT_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SHIPMENT_TYPE_SHOW_NAME'
      LookupDataSet = cdsShipmentTypes
      LookupKeyFields = 'SHIPMENT_TYPE_CODE'
      LookupResultField = '_SHOW_NAME'
      KeyFields = 'SHIPMENT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridDataqrySpecFinModels: TDataSetField
      FieldName = 'qrySpecFinModels'
    end
    object cdsGridDataCOMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CLASS_CODE'
      ProviderFlags = []
    end
    object cdsGridDataOVERRIDE_CURRENCY: TAbmesFloatField
      FieldName = 'OVERRIDE_CURRENCY'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_STORE: TAbmesFloatField
      FieldName = 'OVERRIDE_STORE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_TRANSPORT_DUR_DAYS: TAbmesFloatField
      FieldName = 'OVERRIDE_TRANSPORT_DUR_DAYS'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_MEDIATOR_COMPANY: TAbmesFloatField
      FieldName = 'OVERRIDE_MEDIATOR_COMPANY'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_SHIPMENT_TYPE: TAbmesFloatField
      FieldName = 'OVERRIDE_SHIPMENT_TYPE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_IS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'OVERRIDE_IS_PARTNER_TRANSPORT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_CUSTOMHOUSE: TAbmesFloatField
      FieldName = 'OVERRIDE_CUSTOMHOUSE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataINHRT_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_CURRENCY_CODE'
      ProviderFlags = []
    end
    object cdsGridDataINHRT_STORE_CODE: TAbmesFloatField
      FieldName = 'INHRT_STORE_CODE'
      ProviderFlags = []
    end
    object cdsGridDataINHRT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INHRT_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsGridDataINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_TRANSPORT_DURATION_DAYS'
      ProviderFlags = []
    end
    object cdsGridDataINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'INHRT_MEDIATOR_COMPANY_CODE'
      ProviderFlags = []
    end
    object cdsGridDataINHRT_MED_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'INHRT_MED_COMPANY_SHORT_NAME'
      ProviderFlags = []
    end
    object cdsGridDataINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'INHRT_SHIPMENT_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsGridDataINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'INHRT_IS_PARTNER_TRANSPORT'
      ProviderFlags = []
      DisplayBoolValues = #1055#1072#1088#1090#1085#1100#1086#1088';'#1048#1055
      FieldValueType = fvtBoolean
    end
    object cdsGridDataINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'INHRT_CUSTOMHOUSE_CODE'
      ProviderFlags = []
    end
    object cdsGridData_INHRT_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'INHRT_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_INHRT_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_SHIPMENT_TYPE_ABBREV'
      LookupDataSet = cdsShipmentTypes
      LookupKeyFields = 'SHIPMENT_TYPE_CODE'
      LookupResultField = 'SHIPMENT_TYPE_ABBREV'
      KeyFields = 'SHIPMENT_TYPE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_INHRT_SHIPMENT_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_SHIPMENT_TYPE_SHOW_NAME'
      LookupDataSet = cdsShipmentTypes
      LookupKeyFields = 'SHIPMENT_TYPE_CODE'
      LookupResultField = '_SHOW_NAME'
      KeyFields = 'INHRT_SHIPMENT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_INHRT_CUSTOMHOUSE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_CUSTOMHOUSE_NAME'
      LookupDataSet = cdsCustomhouses
      LookupKeyFields = 'CUSTOMHOUSE_CODE'
      LookupResultField = 'CUSTOMHOUSE_NAME'
      KeyFields = 'INHRT_CUSTOMHOUSE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_SHOW_STORE_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_STORE_IDENTIFIER'
      Size = 100
      Calculated = True
    end
    object cdsGridData_SHOW_TRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_TRANSPORT_DURATION_DAYS'
      Calculated = True
    end
    object cdsGridData_SHOW_MED_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_MED_COMPANY_SHORT_NAME'
      Calculated = True
    end
    object cdsGridData_SHOW_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_CURRENCY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_SHOW_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SHIPMENT_TYPE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_SHOW_IS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_IS_PARTNER_TRANSPORT'
      DisplayBoolValues = #1055#1072#1088#1090#1085#1100#1086#1088';'#1048#1055
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsGridDataqryPRPerPriceModifiers: TDataSetField
      FieldName = 'qryPRPerPriceModifiers'
    end
    object cdsGridDataFIN_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FIN_PARTNER_CODE'
      OnChange = cdsGridDataFIN_PARTNER_CODEChange
    end
    object cdsGridDataFIN_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'FIN_PARTNER_SHORT_NAME'
    end
    object cdsGridDataOVERRIDE_FIN_PARTNER: TAbmesFloatField
      FieldName = 'OVERRIDE_FIN_PARTNER'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataINHRT_FIN_PARTNER_CODE: TAbmesFloatField
      FieldName = 'INHRT_FIN_PARTNER_CODE'
      ProviderFlags = []
    end
    object cdsGridDataINHRT_FIN_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'INHRT_FIN_PARTNER_SHORT_NAME'
      ProviderFlags = []
    end
    object cdsGridData_SHOW_FIN_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_FIN_PARTNER_SHORT_NAME'
      Calculated = True
    end
    object cdsGridData_MAX_PAR_REL_PERIOD_CODE: TAggregateField
      FieldName = '_MAX_PAR_REL_PERIOD_CODE'
      Active = True
      Expression = 'Max(PAR_REL_PERIOD_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 440
    Top = 184
    inherited actForm: TAction
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1089#1082#1080' '#1052#1054#1044#1045#1083' '#1079#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %BorderRelTypeName%'
    end
    object actCreateLike: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
      ImageIndex = 4
      OnExecute = actCreateLikeExecute
      OnUpdate = actCreateLikeUpdate
    end
    object actPastPeriods: TAction
      Caption = #1052
      GroupIndex = 2
      Hint = #1052#1080#1085#1072#1083#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
    object actPresentPeriods: TAction
      Caption = #1053
      Checked = True
      GroupIndex = 3
      Hint = #1053#1072#1089#1090#1086#1103#1097#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
    object actFuturePeriods: TAction
      Caption = #1041
      Checked = True
      GroupIndex = 4
      Hint = #1041#1098#1076#1077#1097#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 64
    Top = 216
  end
  inherited dsGridDataParams: TDataSource
    Left = 96
    Top = 216
  end
  inherited dsData: TDataSource
    Left = 96
    Top = 152
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvParRel'
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 64
    Top = 152
    object cdsDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsDataMAX_SPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'MAX_SPEC_FIN_MODEL_CODE'
    end
    object cdsDataqryParRelPeriods: TDataSetField
      FieldName = 'qryParRelPeriods'
    end
    object cdsDataCOMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CLASS_CODE'
      ProviderFlags = []
    end
  end
  object cdsPartnerOffices: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyOffices'
    BeforeOpen = cdsPartnerOfficesBeforeOpen
    Left = 256
    Top = 184
    object cdsPartnerOfficesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPartnerOfficesOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 288
    Top = 184
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
  end
  object cdsShipmentTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvShipmentTypes'
    OnCalcFields = cdsShipmentTypesCalcFields
    Left = 320
    Top = 184
    object cdsShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      Size = 5
    end
    object cdsShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_NAME'
      Size = 50
    end
    object cdsShipmentTypes_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NAME'
      Size = 100
      Calculated = True
    end
    object cdsShipmentTypesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object cdsCustomhouses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCustomhouses'
    Left = 352
    Top = 184
    object cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField
      FieldName = 'CUSTOMHOUSE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsSpecFinModels: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsGridDataqrySpecFinModels
    Params = <>
    BeforePost = cdsSpecFinModelsBeforePost
    AfterPost = cdsSpecFinModelsAfterPost
    BeforeDelete = cdsSpecFinModelsBeforeDelete
    AfterDelete = cdsSpecFinModelsAfterDelete
    OnCalcFields = cdsSpecFinModelsCalcFields
    OnNewRecord = cdsSpecFinModelsNewRecord
    Left = 128
    Top = 184
    object cdsSpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecFinModelsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsSpecFinModelsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsSpecFinModelsPAR_REL_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PERIOD_CODE'
    end
    object cdsSpecFinModelsFINANCIAL_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090
      FieldName = 'FINANCIAL_PRODUCT_CODE'
      OnChange = cdsSpecFinModelsFINANCIAL_PRODUCT_CODEChange
    end
    object cdsSpecFinModelsFINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'FINANCIAL_PRODUCT_NAME'
      Size = 100
    end
    object cdsSpecFinModelsFINANCIAL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'FINANCIAL_PRODUCT_NO'
    end
    object cdsSpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083' - '#1060#1080#1085#1072#1085#1089#1086#1074
      FieldName = 'SPEC_FIN_MODEL_NAME'
      Size = 100
    end
    object cdsSpecFinModelsIS_EST_MODEL: TAbmesFloatField
      FieldName = 'IS_EST_MODEL'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsSpecFinModelsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
      OnChange = cdsSpecFinModelsAUTHORIZE_EMPLOYEE_CODEChange
    end
    object cdsSpecFinModelsAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object cdsSpecFinModelsAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
    object cdsSpecFinModelsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsSpecFinModelsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsSpecFinModelsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsSpecFinModelsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsSpecFinModelsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsSpecFinModelsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsSpecFinModelsFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      Required = True
    end
    object cdsSpecFinModelsEXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'EXEC_DEPT_CODE'
      OnChange = cdsSpecFinModelsEXEC_DEPT_CODEChange
    end
    object cdsSpecFinModelsEXEC_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EXEC_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsSpecFinModelsPRIMARY_FIN_MODEL_LINE_COUNT: TAbmesFloatField
      FieldName = 'PRIMARY_FIN_MODEL_LINE_COUNT'
    end
    object cdsSpecFinModelsSECONDARY_LINE_QTY_PERCENT: TAbmesFloatField
      FieldName = 'SECONDARY_LINE_QTY_PERCENT'
      OnGetText = cdsSpecFinModelsSECONDARY_LINE_QTY_PERCENTGetText
    end
    object cdsSpecFinModelsqrySpecFinModelLines: TDataSetField
      FieldName = 'qrySpecFinModelLines'
    end
    object cdsSpecFinModels_IS_AUTHORIZED: TAbmesFloatField
      Alignment = taLeftJustify
      FieldKind = fkCalculated
      FieldName = '_IS_AUTHORIZED'
      DisplayBoolValues = #1042#1072#1083#1080#1076#1080#1088#1072#1085';'#1055#1048#1056
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsSpecFinModels_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NAME'
      Size = 200
      Calculated = True
    end
    object cdsSpecFinModels_FM_MOVEMENT_OFFSET_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1073#1072#1079#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072
      FieldKind = fkLookup
      FieldName = '_FM_MOVEMENT_OFFSET_TYPE_NAME'
      LookupDataSet = cdsFMMovementOffsetTypes
      LookupKeyFields = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      LookupResultField = 'FM_MOVEMENT_OFFSET_TYPE_NAME'
      KeyFields = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsSpecFinModels_MAX_SPEC_FIN_MODEL_CODE: TAggregateField
      FieldName = '_MAX_SPEC_FIN_MODEL_CODE'
      Active = True
      Expression = 'Max(SPEC_FIN_MODEL_CODE)'
    end
    object cdsSpecFinModels_AUTHORIZED_COUNT: TAggregateField
      FieldName = '_AUTHORIZED_COUNT'
      Active = True
      Expression = 'Count(AUTHORIZE_EMPLOYEE_CODE)'
    end
    object cdsSpecFinModels_MAX_IS_EST_MODEL: TAggregateField
      FieldName = '_MAX_IS_EST_MODEL'
      Active = True
      Expression = 'Max(IS_EST_MODEL)'
    end
  end
  object cdsFinModelLineReasons: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <>
    ProviderName = 'prvFinModelLineReasons'
    Left = 288
    Top = 216
    object cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_NO'
    end
    object cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_REASON_NAME'
      Size = 50
    end
    object cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_REASON_ABBREV'
      Size = 5
    end
  end
  object cdsSpecFinModelLines: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsSpecFinModelsqrySpecFinModelLines
    FieldDefs = <
      item
        Name = 'SPEC_FIN_MODEL_LINE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_FIN_MODEL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_MODEL_LINE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_MODEL_LINE_NO'
        DataType = ftFloat
      end
      item
        Name = 'LINE_QUANTITY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'MOVEMENT_OFFSET_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'ABS_MOVEMENT_OFFSET_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'MOVEMENT_OFFSET_DAYS_SIGN'
        DataType = ftFloat
      end
      item
        Name = 'MOVEMENT_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'FIN_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'PARTNER_ACCOUNT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_MODEL_LINE_REASON_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_PRIMARY_FIN_MODEL_LINE_TYPE'
        DataType = ftFloat
      end
      item
        Name = 'PRIMARY_LINE_QTY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'SECONDARY_LINE_QTY_PERCENT'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'FIN_MODEL_LINE_TYPE_CODE; FIN_MODEL_LINE_NO'
      end>
    IndexName = 'idxDefault'
    Params = <>
    StoreDefs = True
    BeforeInsert = cdsSpecFinModelLinesBeforeInsert
    BeforePost = cdsSpecFinModelLinesBeforePost
    AfterPost = cdsSpecFinModelLinesAfterPost
    AfterDelete = cdsSpecFinModelLinesAfterDelete
    OnCalcFields = cdsSpecFinModelLinesCalcFields
    OnNewRecord = cdsSpecFinModelLinesNewRecord
    Left = 160
    Top = 184
    object cdsSpecFinModelLinesSPEC_FIN_MODEL_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecFinModelLinesSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object cdsSpecFinModelLinesPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsSpecFinModelLinesFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object cdsSpecFinModelLinesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
      OnChange = cdsSpecFinModelLinesFIN_MODEL_LINE_TYPE_CODEChange
    end
    object cdsSpecFinModelLinesLINE_QUANTITY_PERCENT: TAbmesFloatField
      DisplayLabel = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1087#1088#1086#1087#1086#1088#1094#1080#1103
      FieldName = 'LINE_QUANTITY_PERCENT'
      OnGetText = cdsSpecFinModelLinesLINE_QUANTITY_PERCENTGetText
      OnSetText = cdsSpecFinModelLinesLINE_QUANTITY_PERCENTSetText
      MaxValue = 1.000000000000000000
    end
    object cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS'
      OnChange = cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYSChange
      FieldValueType = fvtInteger
    end
    object cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYS: TAbmesFloatField
      DisplayLabel = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1041#1072#1079#1086#1074#1072' '#1044#1072#1090#1072
      FieldName = 'ABS_MOVEMENT_OFFSET_DAYS'
      OnChange = cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYSChange
      MaxValue = 999999.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS_SIGN'
      OnChange = cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGNChange
    end
    object cdsSpecFinModelLinesMOVEMENT_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1079#1072' '#1044#1074#1080#1078#1077#1085#1080#1077
      FieldName = 'MOVEMENT_DURATION_DAYS'
      MaxValue = 10000.000000000000000000
    end
    object cdsSpecFinModelLinesFIN_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1048#1055
      FieldName = 'FIN_STORE_CODE'
      OnChange = cdsSpecFinModelLinesFIN_STORE_CODEChange
    end
    object cdsSpecFinModelLinesFIN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_STORE_IDENTIFIER'
      OnGetText = cdsSpecFinModelLinesFIN_STORE_IDENTIFIERGetText
      Size = 46
    end
    object cdsSpecFinModelLinesPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
    end
    object cdsSpecFinModelLinesFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_CODE'
    end
    object cdsSpecFinModelLinesIS_PRIMARY_FIN_MODEL_LINE_TYPE: TAbmesFloatField
      FieldName = 'IS_PRIMARY_FIN_MODEL_LINE_TYPE'
      FieldValueType = fvtBoolean
    end
    object cdsSpecFinModelLinesPRIMARY_LINE_QTY_PERCENT: TAbmesFloatField
      FieldName = 'PRIMARY_LINE_QTY_PERCENT'
    end
    object cdsSpecFinModelLinesSECONDARY_LINE_QTY_PERCENT: TAbmesFloatField
      FieldName = 'SECONDARY_LINE_QTY_PERCENT'
    end
    object cdsSpecFinModelLines_FIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FIN_MODEL_LINE_TYPE_ABBREV'
      LookupDataSet = cdsFinModelLineTypes
      LookupKeyFields = 'FIN_MODEL_LINE_TYPE_CODE'
      LookupResultField = 'FIN_MODEL_LINE_TYPE_ABBREV'
      KeyFields = 'FIN_MODEL_LINE_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsSpecFinModelLines_FIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076
      FieldKind = fkLookup
      FieldName = '_FIN_MODEL_LINE_TYPE_NAME'
      LookupDataSet = cdsFinModelLineTypes
      LookupKeyFields = 'FIN_MODEL_LINE_TYPE_CODE'
      LookupResultField = 'FIN_MODEL_LINE_TYPE_NAME'
      KeyFields = 'FIN_MODEL_LINE_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsSpecFinModelLines_FIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      FieldKind = fkLookup
      FieldName = '_FIN_MODEL_LINE_REASON_ABBREV'
      LookupDataSet = cdsFinModelLineReasons
      LookupKeyFields = 'FIN_MODEL_LINE_REASON_CODE'
      LookupResultField = 'FIN_MODEL_LINE_REASON_ABBREV'
      KeyFields = 'FIN_MODEL_LINE_REASON_CODE'
      Lookup = True
    end
    object cdsSpecFinModelLines_SHOW_NO: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NO'
      Calculated = True
    end
    object cdsSpecFinModelLines_MOVEMENT_OFFSET_DAYS_SIGN_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MOVEMENT_OFFSET_DAYS_SIGN_NAME'
      LookupDataSet = cdsDateOffsetSigns
      LookupKeyFields = 'MOVEMENT_OFFSET_DAYS_SIGN'
      LookupResultField = 'MOVEMENT_OFFSET_DAYS_SIGN_NAME'
      KeyFields = 'MOVEMENT_OFFSET_DAYS_SIGN'
      Lookup = True
    end
    object cdsSpecFinModelLines_PARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1085#1072' %BorderRelTypeName%'
      FieldKind = fkLookup
      FieldName = '_PARTNER_ACCOUNT_FULL_NAME'
      LookupDataSet = cdsPartnerAccounts
      LookupKeyFields = 'ACCOUNT_CODE'
      LookupResultField = 'ACCOUNT_FULL_NAME'
      KeyFields = 'PARTNER_ACCOUNT_CODE'
      Size = 100
      Lookup = True
    end
    object cdsSpecFinModelLines_FIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      FieldKind = fkLookup
      FieldName = '_FIN_MODEL_LINE_REASON_NAME'
      LookupDataSet = cdsFinModelLineReasons
      LookupKeyFields = 'FIN_MODEL_LINE_REASON_CODE'
      LookupResultField = 'FIN_MODEL_LINE_REASON_NAME'
      KeyFields = 'FIN_MODEL_LINE_REASON_CODE'
      Size = 100
      Lookup = True
    end
    object cdsSpecFinModelLines_ARROW: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ARROW'
      DisplayBoolValues = #174';'#172
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsSpecFinModelLines_PRIMARY_FIN_MODEL_LINE_COUNT: TAggregateField
      FieldName = '_PRIMARY_FIN_MODEL_LINE_COUNT'
      Active = True
      Expression = 'Sum(IS_PRIMARY_FIN_MODEL_LINE_TYPE)'
    end
    object cdsSpecFinModelLines_SUM_PRIMARY_LINE_QTY_PERCENT: TAggregateField
      FieldName = '_SUM_PRIMARY_LINE_QTY_PERCENT'
      Active = True
      Expression = 'Sum(PRIMARY_LINE_QTY_PERCENT)'
    end
    object cdsSpecFinModelLines_SUM_SECONDARY_LINE_QTY_PERCENT: TAggregateField
      FieldName = '_SUM_SECONDARY_LINE_QTY_PERCENT'
      Active = True
      Expression = 'Sum(SECONDARY_LINE_QTY_PERCENT)'
    end
    object cdsSpecFinModelLines_MAX_FIN_MODEL_LINE_NO: TAggregateField
      FieldName = '_MAX_FIN_MODEL_LINE_NO'
      Active = True
      Expression = 'Max(FIN_MODEL_LINE_NO)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsSpecFinModelLines_MAX_SPEC_FIN_MODEL_LINE_CODE: TAggregateField
      FieldName = '_MAX_SPEC_FIN_MODEL_LINE_CODE'
      Active = True
      Expression = 'Max(SPEC_FIN_MODEL_LINE_CODE)'
    end
    object cdsSpecFinModelLines_MIN_FIN_MODEL_LINE_NO: TAggregateField
      FieldName = '_MIN_FIN_MODEL_LINE_NO'
      Active = True
      Expression = 'Min(FIN_MODEL_LINE_NO)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
  end
  object cdsFinModelLineTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <>
    ProviderName = 'prvFinModelLineTypes'
    Left = 256
    Top = 216
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_NO'
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_NAME'
      Size = 100
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_ABBREV'
      Size = 100
    end
  end
  object cdsDateOffsetSigns: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 216
    object cdsDateOffsetSignsMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS_SIGN'
    end
    object cdsDateOffsetSignsMOVEMENT_OFFSET_DAYS_SIGN_NAME: TAbmesWideStringField
      FieldName = 'MOVEMENT_OFFSET_DAYS_SIGN_NAME'
    end
  end
  object cdsPartnerAccounts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyBankAccounts'
    BeforeOpen = cdsPartnerAccountsBeforeOpen
    OnFilterRecord = cdsPartnerAccountsFilterRecord
    Left = 352
    Top = 216
    object cdsPartnerAccountsACCOUNT_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_CODE'
    end
    object cdsPartnerAccountsACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'ACCOUNT_FULL_NAME'
      Size = 104
    end
    object cdsPartnerAccountsCURRENCY_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_PRODUCT_CODE'
    end
    object cdsPartnerAccountsBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField
      FieldName = 'BANK_ACCOUNT_TYPE_CODE'
      Required = True
    end
  end
  object cdsCommonParRelPeriod: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCommonParRelPeriod'
    Left = 256
    Top = 248
    object cdsCommonParRelPeriodCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsCommonParRelPeriodSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsCommonParRelPeriodSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object cdsCommonParRelPeriodTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
    end
    object cdsCommonParRelPeriodMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object cdsCommonParRelPeriodMEDIATOR_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'MEDIATOR_COMPANY_SHORT_NAME'
    end
    object cdsCommonParRelPeriodSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsCommonParRelPeriodIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
    end
    object cdsCommonParRelPeriodCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsCommonParRelPeriodFIN_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FIN_PARTNER_CODE'
    end
    object cdsCommonParRelPeriodFIN_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'FIN_PARTNER_SHORT_NAME'
    end
  end
  object cdsFMMovementOffsetTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <>
    ProviderName = 'prvFMMovementOffsetTypes'
    Left = 384
    Top = 216
    object cdsFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      Required = True
    end
    object cdsFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_NAME: TAbmesWideStringField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_NAME'
      Size = 100
    end
  end
end
