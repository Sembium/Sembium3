inherited fmModelMovementsOverviewFilter: TfmModelMovementsOverviewFilter
  Left = 260
  Top = 99
  Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1090#1072#1087#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
  ClientHeight = 612
  ClientWidth = 769
  OldCreateOrder = False
  ExplicitWidth = 775
  ExplicitHeight = 638
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 577
    Width = 769
    TabOrder = 10
    ExplicitTop = 577
    ExplicitWidth = 769
    inherited pnlOKCancel: TPanel
      Left = 501
      ExplicitLeft = 501
    end
    inherited pnlClose: TPanel
      Left = 412
      ExplicitLeft = 412
    end
    inherited pnlApply: TPanel
      Left = 680
      ExplicitLeft = 680
    end
  end
  object gbMMIdentification: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 161
    Height = 65
    Caption = ' ID '#1045#1090#1072#1087#1085#1086' '#1044#1074#1080#1078#1077#1085#1080#1077' '
    TabOrder = 0
    object lblOMBranchCode: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblOMNo: TLabel
      Left = 72
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object edtOMNo: TDBEdit
      Left = 72
      Top = 32
      Width = 81
      Height = 21
      DataField = 'OM_NO'
      DataSource = dsData
      TabOrder = 1
    end
    object cbOMBranchCode: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DataField = '_OM_BRANCH_CODE_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 0
    end
  end
  object gbDates: TGroupBox [2]
    Left = 184
    Top = 8
    Width = 193
    Height = 65
    Caption = ' '#1044#1072#1090#1072' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '
    TabOrder = 1
    inline frDateInterval: TfrDateIntervalFrame
      Left = 24
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 24
      ExplicitTop = 32
    end
  end
  object rgIsStorno: TDBRadioGroup [3]
    Left = 392
    Top = 8
    Width = 369
    Height = 65
    BiDiMode = bdLeftToRight
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    Columns = 3
    DataField = 'IS_STORNO'
    DataSource = dsData
    Items.Strings = (
      #1053#1077#1072#1085#1091#1083#1080#1088#1072#1085#1080
      #1040#1085#1091#1083#1080#1088#1072#1085#1080
      #1042#1089#1080#1095#1082#1080)
    ParentBackground = True
    ParentBiDiMode = False
    TabOrder = 2
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object bgMLLIdentification: TGroupBox [4]
    Left = 392
    Top = 80
    Width = 369
    Height = 65
    Caption = ' ID '#1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083' '
    TabOrder = 4
    object lblMllNoAsText: TLabel
      Left = 8
      Top = 16
      Width = 92
      Height = 13
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
    end
    object lblMllForkNo: TLabel
      Left = 336
      Top = 16
      Width = 13
      Height = 13
      Caption = #1056#1082
    end
    object edtMllNoAsText: TDBEdit
      Left = 8
      Top = 32
      Width = 321
      Height = 21
      DataField = 'MLL_NO_AS_TEXT'
      DataSource = dsData
      TabOrder = 0
    end
    object edtMllForkNo: TDBEdit
      Left = 336
      Top = 32
      Width = 25
      Height = 21
      DataField = 'MLL_FORK_NO'
      DataSource = dsData
      TabOrder = 1
    end
  end
  object gbProductionOrder: TGroupBox [5]
    Left = 8
    Top = 80
    Width = 369
    Height = 65
    Caption = ' ID '#1054#1055#1042' '
    TabOrder = 3
    object lblSaleBranch: TLabel
      Left = 72
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbSaleBranch
    end
    object lblSaleNo: TLabel
      Left = 136
      Top = 16
      Width = 40
      Height = 13
      Caption = #1054#1055#1042' No'
      FocusControl = edtSaleNo
    end
    object lblSaleType: TLabel
      Left = 192
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = edtSaleNo
    end
    object lblPriorityCode: TLabel
      Left = 264
      Top = 16
      Width = 80
      Height = 13
      Caption = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090
      FocusControl = cbSaleBranch
    end
    object lblProductionOrderType: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089
      FocusControl = cbProductionOrderType
    end
    object cbSaleBranch: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DataField = '_SALE_BRANCH_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 1
    end
    object edtSaleNo: TDBEdit
      Left = 136
      Top = 32
      Width = 49
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object cbSaleType: TJvDBLookupCombo
      Left = 192
      Top = 32
      Width = 57
      Height = 21
      EscapeClear = False
      DataField = '_SALE_TYPE_ABBREV'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 3
    end
    inline frPriorityInterval: TfrPriorityIntervalEditFrame
      Left = 264
      Top = 32
      Width = 97
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 97
      Constraints.MinHeight = 21
      Constraints.MinWidth = 97
      TabOrder = 4
      TabStop = True
      ExplicitLeft = 264
      ExplicitTop = 32
      inherited lblDash: TLabel
        Width = 6
        ExplicitWidth = 6
      end
    end
    object cbProductionOrderType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DropDownCount = 20
      DropDownWidth = 240
      DisplayAllFields = True
      DataField = 'PRODUCTION_ORDER_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'PRODUCTION_ORDER_TYPE_CODE'
      LookupDisplay = 'PRODUCTION_ORDER_TYPE_ABBREV;PRODUCTION_ORDER_TYPE_NAME'
      LookupSource = dsProductionOrderTypes
      TabOrder = 0
    end
  end
  inline frResultProduct: TfrParamProductFilter [6]
    Left = 8
    Top = 152
    Width = 369
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 152
    ExplicitWidth = 369
    inherited grpTreeNodeFilter: TGroupBox
      Width = 369
      Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' ID '#1054#1055#1042' '
      ExplicitWidth = 369
      inherited lblUsedBy: TLabel
        Width = 61
        ExplicitWidth = 61
      end
      inherited lblProductOrigin: TLabel
        Width = 23
        ExplicitWidth = 23
      end
      inherited lblCommonStatus: TLabel
        Width = 45
        ExplicitWidth = 45
      end
      inherited lblIsActive: TLabel
        Width = 53
        ExplicitWidth = 53
      end
      inherited pnlNodes: TPanel
        Width = 353
        ExplicitWidth = 353
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 328
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 231
            end
            item
              EditButtons = <>
              FieldName = 'NODE_NO'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 328
          ExplicitLeft = 328
        end
      end
      inherited pnlParams: TPanel
        Width = 353
        ExplicitWidth = 353
        inherited grdChosenNodeParams: TAbmesDBGrid
          Width = 328
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_PARAM_NAME'
              Footers = <>
              Width = 199
            end
            item
              EditButtons = <>
              FieldName = 'DISPLAY_VALUE'
              Footers = <>
              Width = 95
            end>
        end
        inherited pnlParamsButtons: TPanel
          Left = 328
          ExplicitLeft = 328
        end
      end
    end
  end
  inline frDetail: TfrParamProductFilter [7]
    Left = 392
    Top = 152
    Width = 369
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    TabStop = True
    ExplicitLeft = 392
    ExplicitTop = 152
    ExplicitWidth = 369
    inherited grpTreeNodeFilter: TGroupBox
      Width = 369
      Caption = ' '#1050#1057#1063' '
      ExplicitWidth = 369
      inherited lblUsedBy: TLabel
        Width = 61
        ExplicitWidth = 61
      end
      inherited lblProductOrigin: TLabel
        Width = 23
        ExplicitWidth = 23
      end
      inherited lblCommonStatus: TLabel
        Width = 45
        ExplicitWidth = 45
      end
      inherited lblIsActive: TLabel
        Width = 53
        ExplicitWidth = 53
      end
      inherited pnlNodes: TPanel
        Width = 353
        ExplicitWidth = 353
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 328
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 231
            end
            item
              EditButtons = <>
              FieldName = 'NODE_NO'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 328
          ExplicitLeft = 328
        end
      end
      inherited pnlParams: TPanel
        Width = 353
        ExplicitWidth = 353
        inherited grdChosenNodeParams: TAbmesDBGrid
          Width = 328
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_PARAM_NAME'
              Footers = <>
              Width = 199
            end
            item
              EditButtons = <>
              FieldName = 'DISPLAY_VALUE'
              Footers = <>
              Width = 95
            end>
        end
        inherited pnlParamsButtons: TPanel
          Left = 328
          ExplicitLeft = 328
        end
      end
    end
  end
  object gbFrom: TGroupBox [8]
    Left = 8
    Top = 392
    Width = 369
    Height = 177
    Caption = ' '#1054#1058' '
    TabOrder = 7
    object pnlFromStage: TPanel
      Left = 2
      Top = 15
      Width = 365
      Height = 154
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblFromStageNo: TLabel
        Left = 8
        Top = 8
        Width = 41
        Height = 13
        Caption = #1045#1090#1072#1087' No'
        FocusControl = edtFromStageNo
      end
      object edtFromStageNo: TDBEdit
        Left = 8
        Top = 24
        Width = 49
        Height = 21
        DataField = 'FROM_STAGE_NO'
        DataSource = dsData
        TabOrder = 0
      end
      inline frFromStageDept: TfrDeptFilter
        Left = 72
        Top = 8
        Width = 281
        Height = 145
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = True
        ExplicitLeft = 72
        ExplicitTop = 8
        ExplicitWidth = 281
        inherited grpTreeNodeFilter: TGroupBox
          Width = 281
          Caption = ' '#1058#1055' '#1055#1088#1077#1076#1072#1074#1072#1097#1086' '
          ExplicitWidth = 281
          inherited lblsExternal: TLabel
            Width = 52
            ExplicitWidth = 52
          end
          inherited lblIsActive: TLabel
            Width = 53
            ExplicitWidth = 53
          end
          inherited pnlNodes: TPanel
            Width = 265
            ExplicitWidth = 265
            inherited grdChosenNodes: TAbmesDBGrid
              Width = 240
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NODE_NAME'
                  Footers = <>
                  Width = 143
                end
                item
                  EditButtons = <>
                  FieldName = 'NODE_IDENTIFIER'
                  Footers = <>
                  Width = 63
                end>
            end
            inherited pnlNodesButtons: TPanel
              Left = 240
              ExplicitLeft = 240
            end
          end
        end
      end
    end
  end
  object gbTo: TGroupBox [9]
    Left = 392
    Top = 392
    Width = 369
    Height = 177
    TabOrder = 9
    object pnlToStage: TPanel
      Left = 2
      Top = 15
      Width = 365
      Height = 154
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblToStageNo: TLabel
        Left = 8
        Top = 8
        Width = 41
        Height = 13
        Caption = #1045#1090#1072#1087' No'
        FocusControl = edtToStageNo
      end
      object edtToStageNo: TDBEdit
        Left = 8
        Top = 24
        Width = 49
        Height = 21
        DataField = 'TO_STAGE_NO'
        DataSource = dsData
        TabOrder = 0
      end
      inline frToStageDept: TfrDeptFilter
        Left = 72
        Top = 8
        Width = 281
        Height = 145
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = True
        ExplicitLeft = 72
        ExplicitTop = 8
        ExplicitWidth = 281
        inherited grpTreeNodeFilter: TGroupBox
          Width = 281
          Caption = ' '#1058#1055' '#1055#1088#1080#1077#1084#1072#1097#1086' '
          ExplicitWidth = 281
          inherited lblsExternal: TLabel
            Width = 52
            ExplicitWidth = 52
          end
          inherited lblIsActive: TLabel
            Width = 53
            ExplicitWidth = 53
          end
          inherited pnlNodes: TPanel
            Width = 265
            ExplicitWidth = 265
            inherited grdChosenNodes: TAbmesDBGrid
              Width = 240
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NODE_NAME'
                  Footers = <>
                  Width = 143
                end
                item
                  EditButtons = <>
                  FieldName = 'NODE_IDENTIFIER'
                  Footers = <>
                  Width = 63
                end>
            end
            inherited pnlNodesButtons: TPanel
              Left = 240
              ExplicitLeft = 240
            end
          end
        end
      end
    end
    object pnlToWaste: TPanel
      Left = 2
      Top = 169
      Width = 365
      Height = 153
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      inline frToWasteDept: TfrDeptFilter
        Left = 8
        Top = 8
        Width = 345
        Height = 145
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        ExplicitLeft = 8
        ExplicitTop = 8
        ExplicitWidth = 345
        inherited grpTreeNodeFilter: TGroupBox
          Width = 345
          Caption = ' '#1058#1055' '#1055#1088#1080#1077#1084#1072#1097#1086' '#1059#1054#1073' '#1041#1083#1086#1082#1080#1088#1072#1097' '
          ExplicitWidth = 345
          inherited lblsExternal: TLabel
            Width = 52
            ExplicitWidth = 52
          end
          inherited lblIsActive: TLabel
            Width = 53
            ExplicitWidth = 53
          end
          inherited pnlNodes: TPanel
            Width = 329
            ExplicitWidth = 329
            inherited grdChosenNodes: TAbmesDBGrid
              Width = 304
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NODE_NAME'
                  Footers = <>
                  Width = 207
                end
                item
                  EditButtons = <>
                  FieldName = 'NODE_IDENTIFIER'
                  Footers = <>
                  Width = 63
                end>
            end
            inherited pnlNodesButtons: TPanel
              Left = 304
              ExplicitLeft = 304
            end
          end
        end
      end
    end
  end
  object pnlToOperationOrWaste: TPanel [10]
    Left = 400
    Top = 389
    Width = 170
    Height = 21
    BevelOuter = bvNone
    TabOrder = 8
    DesignSize = (
      170
      21)
    object lblToStageOrWaste: TLabel
      Left = 3
      Top = 3
      Width = 24
      Height = 13
      Caption = #1050#1066#1052
    end
    object cbToStageOrWaste: TJvDBComboBox
      Left = 30
      Top = 0
      Width = 137
      Height = 21
      DataField = 'TO_STAGE_OR_WASTE'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1045#1090#1072#1087
        #1041#1083#1086#1082#1080#1088#1072#1085#1077)
      TabOrder = 0
      Values.Strings = (
        ''
        '1'
        '2')
      OnChange = cbToStageOrWasteChange
    end
  end
  inherited alActions: TActionList [11]
    Left = 0
    Top = 304
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1090#1072#1087#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
    end
  end
  inherited dsData: TDataSource [12]
    Left = 56
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [14]
    Top = 256
  end
  inherited dsFilterVariants: TDataSource [15]
    Top = 256
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 272
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    ConnectionBroker = dmMain.conSalesCommon
    OnFilterRecord = cdsProductionOrderTypesFilterRecord
    Left = 448
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      DisplayWidth = 5
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_NAME'
      Size = 100
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_TEXT'
      Size = 108
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_NO'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_CODE'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_NO'
    end
    object cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField
      FieldName = 'IS_REVERSIBLE'
    end
  end
  object dsProductionOrderTypes: TDataSource
    DataSet = cdsProductionOrderTypes
    Left = 480
  end
end
