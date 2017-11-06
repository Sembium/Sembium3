inherited fmDisciplineEventTypeEdit: TfmDisciplineEventTypeEdit
  BorderIcons = [biSystemMenu]
  Caption = 'fmDisciplineEventTypeEdit'
  ClientHeight = 419
  ClientWidth = 505
  ExplicitWidth = 511
  ExplicitHeight = 444
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 384
    Width = 505
    ExplicitTop = 384
    ExplicitWidth = 505
    inherited pnlOKCancel: TPanel
      Left = 237
      ExplicitLeft = 237
    end
    inherited pnlClose: TPanel
      Left = 148
      ExplicitLeft = 148
    end
    inherited pnlApply: TPanel
      Left = 416
      Visible = False
      ExplicitLeft = 416
    end
  end
  inherited pnlMain: TPanel
    Width = 505
    Height = 384
    ExplicitWidth = 505
    ExplicitHeight = 384
    inherited pnlGrid: TPanel
      Top = 161
      Width = 489
      Height = 215
      TabOrder = 1
      ExplicitTop = 161
      ExplicitWidth = 489
      ExplicitHeight = 215
      inherited pnlNavigator: TPanel
        Width = 489
        ExplicitWidth = 489
        inherited pnlFilterButton: TPanel
          Left = 168
          ExplicitLeft = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
          ExplicitLeft = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 489
        Height = 191
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
            Width = 277
          end
          item
            EditButtons = <>
            FieldName = 'ACTIVE_DATE_UNIT_COUNT'
            Footers = <>
            Title.Caption = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1040#1082#1090#1080#1074#1085#1086#1089#1090'|'#1041#1088#1086#1081
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = '_ACTIVE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1040#1082#1090#1080#1074#1085#1086#1089#1090'|'#1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'RATING'
            Footers = <>
            Title.Caption = #1060#1072#1082#1090'. '#1090#1086#1095#1082#1080
            Width = 43
          end>
      end
    end
    object pnlTop: TPanel
      Left = 8
      Top = 8
      Width = 489
      Height = 153
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object gbDiscEventType: TGroupBox
        Left = 0
        Top = 0
        Width = 489
        Height = 153
        Caption = 'gbDiscEventType'
        TabOrder = 0
        object lblDiscEventTypeNo: TLabel
          Left = 8
          Top = 24
          Width = 54
          Height = 13
          Caption = #1057#1090#1088#1091#1082#1090'. No'
        end
        object lblName: TLabel
          Left = 128
          Top = 24
          Width = 112
          Height = 13
          Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        object btnNameToShortName: TSpeedButton
          Left = 267
          Top = 66
          Width = 46
          Height = 22
          Action = actCopyNameToShortName
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BF
            BF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF00BFBF00BF
            BF00BFBF00BFBF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000BFBF00BFBF00BFBF00BFBF00BFBF00BFBF00BFBF00000000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000BFBF00BF
            BF00BFBF00000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF00BF
            BF00BFBF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
            0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
        end
        object lblShortName: TLabel
          Left = 128
          Top = 77
          Width = 115
          Height = 13
          Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        object gbDiscEventTypeSign: TDBRadioGroup
          Left = 8
          Top = 74
          Width = 113
          Height = 42
          Columns = 2
          DataField = 'DISC_EVENT_TYPE_SIGN'
          DataSource = dsData
          Items.Strings = (
            ' '
            ' ')
          ParentBackground = True
          TabOrder = 4
          Values.Strings = (
            '1'
            '-1')
        end
        object edtParentDiscEventTypeFullNo: TDBEdit
          Left = 8
          Top = 40
          Width = 81
          Height = 21
          TabStop = False
          BiDiMode = bdLeftToRight
          Color = clBtnFace
          DataField = 'PARENT_FULL_NO'
          DataSource = dsData
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtDiscEventTypeLocalNo: TDBEdit
          Left = 90
          Top = 40
          Width = 31
          Height = 21
          DataField = 'DISC_EVENT_TYPE_LOCAL_NO'
          DataSource = dsData
          TabOrder = 1
        end
        object edtDiscEventTypeName: TDBEdit
          Left = 128
          Top = 40
          Width = 305
          Height = 21
          DataField = 'NAME'
          DataSource = dsData
          TabOrder = 2
        end
        object edtDiscEventTypeShortName: TDBEdit
          Left = 128
          Top = 93
          Width = 305
          Height = 21
          DataField = 'SHORT_NAME'
          DataSource = dsData
          TabOrder = 7
        end
        object pnlMinus: TPanel
          Left = 83
          Top = 88
          Width = 26
          Height = 21
          BevelOuter = bvNone
          TabOrder = 6
          object imgMinus: TImage
            Left = 5
            Top = 2
            Width = 16
            Height = 16
            Picture.Data = {
              07544269746D617036030000424D360300000000000036000000280000001000
              000010000000010018000000000000030000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF}
            Transparent = True
          end
        end
        object pnlPlus: TPanel
          Left = 31
          Top = 88
          Width = 26
          Height = 21
          BevelOuter = bvNone
          TabOrder = 5
          object imgPlus: TImage
            Left = 5
            Top = 2
            Width = 16
            Height = 16
            Picture.Data = {
              07544269746D617036030000424D360300000000000036000000280000001000
              000010000000010018000000000000030000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E9A1F059617FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF0A981B029514FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A981B029514FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0596
              17029514019413009412009412019413019413029514FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF029514019413019413009412009412019413
              029514059617FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF0A981B049616FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A981B0A981BFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF0E9A1F0E9A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF}
            Transparent = True
          end
        end
        object pnlColors: TPanel
          Left = 128
          Top = 120
          Width = 249
          Height = 25
          BevelOuter = bvNone
          TabOrder = 8
          inline frDiscEventTypeColor: TfrColor
            Left = 0
            Top = 0
            Width = 106
            Height = 25
            TabOrder = 0
            TabStop = True
          end
          inline frDiscEventTypeBackgroundColor: TfrColor
            Left = 143
            Top = 0
            Width = 106
            Height = 25
            TabOrder = 1
            TabStop = True
            ExplicitLeft = 143
            inherited btnColor: TBitBtn
              Caption = #1060#1086#1085'...'
            end
          end
        end
        object tbDocButton: TToolBar
          Left = 442
          Top = 39
          Width = 39
          Height = 22
          Align = alNone
          ButtonWidth = 36
          EdgeInner = esNone
          EdgeOuter = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
          object btnDoc: TToolButton
            Left = 0
            Top = 0
            Action = actDoc
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    DataSetField = cdsDataqryDiscEventTypePeriods
    FieldDefs = <
      item
        Name = 'DISC_EVENT_TYPE_PERIOD_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DISC_EVENT_TYPE_CODE'
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
        Name = 'ACTIVE_DATE_UNIT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVE_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'RATING'
        DataType = ftFloat
      end>
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataDISC_EVENT_TYPE_PERIOD_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_PERIOD_CODE'
      Required = True
    end
    object cdsGridDataDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
      Required = True
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      Required = True
      OnGetText = cdsGridDataBEGIN_DATEGetText
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsGridDataACTIVE_DATE_UNIT_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1074#1088#1077#1084#1077#1074#1080' '#1089#1090#1098#1087#1082#1080
      FieldName = 'ACTIVE_DATE_UNIT_COUNT'
      Required = True
    end
    object cdsGridDataACTIVE_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
      FieldName = 'ACTIVE_DATE_UNIT_CODE'
      Required = True
    end
    object cdsGridDataRATING: TAbmesFloatField
      DisplayLabel = #1060#1072#1082#1090#1086#1074#1080' '#1090#1086#1095#1082#1080
      FieldName = 'RATING'
      Required = True
    end
    object cdsGridData_ACTIVE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ACTIVE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'ACTIVE_DATE_UNIT_CODE'
      Size = 50
      Lookup = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'fmDisciplineEventTypeEdit'
    end
    object actCopyNameToShortName: TAction
      Hint = #1050#1086#1087#1080#1088#1072' '#1055#1098#1083#1085#1086#1090#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074' '#1050#1088#1072#1090#1082#1086#1090#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      OnExecute = actCopyNameToShortNameExecute
      OnUpdate = actCopyNameToShortNameUpdate
    end
    object actDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1042#1080#1076' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1074' '#1056#1055#1074
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDiscEventType'
    ConnectionBroker = dmMain.conHumanResource
    BeforePost = cdsDataBeforePost
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    object cdsDataDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
      Required = True
    end
    object cdsDataPARENT_DISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PARENT_DISC_EVENT_TYPE_CODE'
    end
    object cdsDataDISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField
      DisplayLabel = #1057#1090#1088#1091#1082#1090'. No'
      FieldName = 'DISC_EVENT_TYPE_LOCAL_NO'
      Required = True
    end
    object cdsDataNAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object cdsDataSHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      FieldValueType = fvtBoolean
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDataDISC_EVENT_TYPE_SIGN: TAbmesFloatField
      DisplayLabel = #1055#1086#1083#1086#1078#1080#1090#1077#1083#1077#1085' / '#1054#1090#1088#1080#1094#1072#1090#1077#1083#1077#1085
      FieldName = 'DISC_EVENT_TYPE_SIGN'
    end
    object cdsDataCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
    end
    object cdsDataBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
    end
    object cdsDataPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
    object cdsDataqryDiscEventTypePeriods: TDataSetField
      FieldName = 'qryDiscEventTypePeriods'
    end
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDateUnits'
    ConnectionBroker = dmMain.conCommon
    Left = 320
    Top = 264
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
end
