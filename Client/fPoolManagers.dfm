inherited fmPoolManagers: TfmPoolManagers
  Caption = #1057#1098#1088#1074#1098#1088#1085#1080' '#1052#1086#1076#1091#1083#1080
  ClientHeight = 401
  ClientWidth = 546
  ExplicitWidth = 552
  ExplicitHeight = 426
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 366
    Width = 546
    ExplicitTop = 366
    ExplicitWidth = 546
    inherited pnlOKCancel: TPanel
      Left = 278
      TabOrder = 2
      Visible = False
      ExplicitLeft = 278
    end
    inherited pnlClose: TPanel
      Left = 189
      TabOrder = 1
      Visible = True
      ExplicitLeft = 189
    end
    inherited pnlApply: TPanel
      Left = 457
      TabOrder = 3
      Visible = False
      ExplicitLeft = 457
    end
    object btnResetPoolManager: TBitBtn
      Left = 8
      Top = 2
      Width = 75
      Height = 25
      Action = actResetPoolManager
      Caption = #1056#1077#1089#1077#1090
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000084848400FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00848484000000000084848400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000084848400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF00000000008484
        8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000000000000000000000FFFF000000
        000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF0000FFFF00FFFFFF0000FFFF0000FF
        FF000000000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF000000
        000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
        FF000000000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
        FF0000FFFF000000000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
        000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
        FF000000000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
        FF00FFFFFF000000000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF00FFFF
        FF0000FFFF00FFFFFF000000000084848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00}
    end
  end
  inherited pnlMain: TPanel
    Width = 546
    Height = 366
    ExplicitWidth = 546
    ExplicitHeight = 366
    inherited pnlGrid: TPanel
      Width = 530
      Height = 350
      ExplicitWidth = 530
      ExplicitHeight = 350
      inherited pnlNavigator: TPanel
        Width = 530
        ExplicitWidth = 530
        inherited pnlFilterButton: TPanel
          Left = 120
          ExplicitLeft = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Hints.Strings = ()
          ExplicitWidth = 120
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
          ExplicitLeft = 144
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 530
        Height = 326
        FooterColor = 15258325
        FooterRowCount = 1
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MODULE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1052#1086#1076#1091#1083
            Width = 172
          end
          item
            EditButtons = <>
            FieldName = 'INSTANCES_COUNT'
            Footer.FieldName = '_SUM_INSTANCES_COUNT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1048#1085#1089#1090#1072#1085#1094#1080#1080'|'#1054#1073#1097#1086
          end
          item
            EditButtons = <>
            FieldName = 'IN_USE_INSTANCES_COUNT'
            Footers = <>
            Title.Caption = #1048#1085#1089#1090#1072#1085#1094#1080#1080'|'#1047#1072#1077#1090#1080
          end
          item
            EditButtons = <>
            FieldName = 'MIN_INSTANCES'
            Footers = <>
            Title.Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1086#1085#1085#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1041#1088#1086#1081' '#1080#1085#1089#1090#1072#1085#1094#1080#1080'|'#1052#1080#1085#1080#1084#1091#1084
          end
          item
            EditButtons = <>
            FieldName = 'MAX_INSTANCES'
            Footers = <>
            Title.Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1086#1085#1085#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1041#1088#1086#1081' '#1080#1085#1089#1090#1072#1085#1094#1080#1080'|'#1052#1072#1082#1089#1080#1084#1091#1084
          end
          item
            EditButtons = <>
            FieldName = '_TIMEOUT'
            Footers = <>
            Title.Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1086#1085#1085#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1058#1072#1081#1084#1072#1091#1090' ('#1089#1077#1082'.)'
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'OBJ_CLASS_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'OBJ_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'MODULE_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'INSTANCES_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'IN_USE_INSTANCES_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'MIN_INSTANCES'
        DataType = ftFloat
      end
      item
        Name = 'MAX_INSTANCES'
        DataType = ftFloat
      end
      item
        Name = 'TIMEOUT'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'MODULE_IDENTIFIER'
      end>
    IndexName = 'idxDefault'
    ProviderName = 'prvPoolManagers'
    ConnectionBroker = dmMain.conNonDbUtils
    OnCalcFields = cdsGridDataCalcFields
    object cdsGridDataOBJ_CLASS_NAME: TAbmesWideStringField
      FieldName = 'OBJ_CLASS_NAME'
      Size = 50
    end
    object cdsGridDataOBJ_NAME: TAbmesWideStringField
      FieldName = 'OBJ_NAME'
      Size = 50
    end
    object cdsGridDataMODULE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODULE_IDENTIFIER'
      Size = 100
    end
    object cdsGridDataINSTANCES_COUNT: TAbmesFloatField
      FieldName = 'INSTANCES_COUNT'
    end
    object cdsGridDataIN_USE_INSTANCES_COUNT: TAbmesFloatField
      FieldName = 'IN_USE_INSTANCES_COUNT'
    end
    object cdsGridDataMIN_INSTANCES: TAbmesFloatField
      FieldName = 'MIN_INSTANCES'
    end
    object cdsGridDataMAX_INSTANCES: TAbmesFloatField
      FieldName = 'MAX_INSTANCES'
    end
    object cdsGridDataTIMEOUT: TAbmesFloatField
      FieldName = 'TIMEOUT'
    end
    object cdsGridData_TIMEOUT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TIMEOUT'
      Calculated = True
    end
    object cdsGridData_SUM_INSTANCES_COUNT: TAggregateField
      FieldName = '_SUM_INSTANCES_COUNT'
      Active = True
      Expression = 'SUM(INSTANCES_COUNT)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1057#1098#1088#1074#1098#1088#1085#1080' '#1052#1086#1076#1091#1083#1080
    end
    object actResetPoolManager: TAction
      Caption = #1056#1077#1089#1077#1090
      ImageIndex = 82
      OnExecute = actResetPoolManagerExecute
      OnUpdate = actResetPoolManagerUpdate
    end
  end
end
