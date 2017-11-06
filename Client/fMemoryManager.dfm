inherited fmMemoryManager: TfmMemoryManager
  ActiveControl = nil
  Caption = #1057#1098#1088#1074#1098#1088#1085#1072' '#1055#1072#1084#1077#1090
  ClientHeight = 419
  ClientWidth = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 384
    Width = 604
    object lblServerProcessAllocatedMemoryLabel: TLabel [0]
      Left = 8
      Top = -1
      Width = 103
      Height = 13
      Caption = 'Process Working Set:'
    end
    object lblServerProcessAllocated: TLabel [1]
      Left = 116
      Top = -1
      Width = 6
      Height = 13
      Caption = '0'
    end
    object lblStringsSavedMemoryLabel: TLabel [2]
      Left = 8
      Top = 15
      Width = 106
      Height = 13
      Caption = 'Strings saved memory:'
    end
    object lblStringsSavedMemory: TLabel [3]
      Left = 120
      Top = 15
      Width = 6
      Height = 13
      Caption = '0'
    end
    inherited pnlOKCancel: TPanel
      Left = 336
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 247
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 515
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 604
    Height = 384
    inherited pnlGrid: TPanel
      Width = 588
      Height = 368
      inherited pnlNavigator: TPanel
        Width = 588
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 588
        Height = 344
        FooterColor = 15258325
        FooterRowCount = 1
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'INTERNAL_BLOCK_SIZE'
            Footers = <>
            Title.Caption = #1056#1072#1079#1084#1077#1088' '#1085#1072' '#1073#1083#1086#1082' ('#1073#1072#1081#1090#1072')|'#1056#1077#1072#1083#1077#1085
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'USABLE_BLOCK_SIZE'
            Footers = <>
            Title.Caption = #1056#1072#1079#1084#1077#1088' '#1085#1072' '#1073#1083#1086#1082' ('#1073#1072#1081#1090#1072')|'#1048#1079#1087#1086#1083#1079#1074#1072#1077#1084
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'BLOCK_COUNT'
            Footer.FieldName = '_SUM_BLOCK_COUNT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1047#1072#1077#1090#1072' '#1087#1072#1084#1077#1090'|'#1041#1088#1086#1081' '#1073#1083#1086#1082#1086#1074#1077
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'INTERNAL_ALLOCATED_SIZE'
            Footer.FieldName = '_SUM_INTERNAL_ALLOCATED_SIZE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1047#1072#1077#1090#1072' '#1087#1072#1084#1077#1090'|'#1056#1072#1079#1084#1077#1088' ('#1073#1072#1081#1090#1072')|'#1056#1077#1072#1083#1077#1085
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'USABLE_ALLOCATED_SIZE'
            Footer.FieldName = '_SUM_USABLE_ALLOCATED_SIZE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1047#1072#1077#1090#1072' '#1087#1072#1084#1077#1090'|'#1056#1072#1079#1084#1077#1088' ('#1073#1072#1081#1090#1072')|'#1048#1079#1087#1086#1083#1079#1074#1072#1077#1084
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'RESERVED_ADDRESS_SPACE'
            Footer.FieldName = '_SUM_RESERVED_ADDRESS_SPACE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1047#1072#1087#1072#1079#1077#1085#1072' '#1087#1072#1084#1077#1090' ('#1073#1072#1081#1090#1072')'
            Width = 110
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conNonDbUtils
    FieldDefs = <
      item
        Name = 'INTERNAL_BLOCK_SIZE'
        DataType = ftFloat
      end
      item
        Name = 'USABLE_BLOCK_SIZE'
        DataType = ftFloat
      end
      item
        Name = 'BLOCK_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'INTERNAL_ALLOCATED_SIZE'
        DataType = ftFloat
      end
      item
        Name = 'USABLE_ALLOCATED_SIZE'
        DataType = ftFloat
      end
      item
        Name = 'RESERVED_ADDRESS_SPACE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'INTERNAL_BLOCK_SIZE'
      end>
    IndexName = 'idxDefault'
    ProviderName = 'prvMemoryManager'
    AfterGetRecords = cdsGridDataAfterGetRecords
    object cdsGridDataINTERNAL_BLOCK_SIZE: TAbmesFloatField
      FieldName = 'INTERNAL_BLOCK_SIZE'
      OnGetText = cdsGridDataINTERNAL_BLOCK_SIZEGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataUSABLE_BLOCK_SIZE: TAbmesFloatField
      FieldName = 'USABLE_BLOCK_SIZE'
      DisplayFormat = ',0'
    end
    object cdsGridDataBLOCK_COUNT: TAbmesFloatField
      FieldName = 'BLOCK_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataINTERNAL_ALLOCATED_SIZE: TAbmesFloatField
      FieldName = 'INTERNAL_ALLOCATED_SIZE'
      DisplayFormat = ',0'
    end
    object cdsGridDataUSABLE_ALLOCATED_SIZE: TAbmesFloatField
      FieldName = 'USABLE_ALLOCATED_SIZE'
      DisplayFormat = ',0'
    end
    object cdsGridDataRESERVED_ADDRESS_SPACE: TAbmesFloatField
      FieldName = 'RESERVED_ADDRESS_SPACE'
      DisplayFormat = ',0'
    end
    object cdsGridData_SUM_BLOCK_COUNT: TAggregateField
      FieldName = '_SUM_INTERNAL_ALLOCATED_SIZE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'SUM(INTERNAL_ALLOCATED_SIZE)'
    end
    object cdsGridData_SUM_TOTAL_ALLOCATED_SIZE: TAggregateField
      FieldName = '_SUM_USABLE_ALLOCATED_SIZE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'SUM(USABLE_ALLOCATED_SIZE)'
    end
    object cdsGridData_SUM_RESERVED_ADDRESS_SPACE: TAggregateField
      FieldName = '_SUM_RESERVED_ADDRESS_SPACE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'SUM(RESERVED_ADDRESS_SPACE)'
    end
    object cdsGridData_SUM_BLOCK_COUNT2: TAggregateField
      FieldName = '_SUM_BLOCK_COUNT'
      Active = True
      DisplayFormat = ',0'
      Expression = 'SUM(BLOCK_COUNT)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1057#1098#1088#1074#1098#1088#1085#1072' '#1055#1072#1084#1077#1090
    end
  end
end
