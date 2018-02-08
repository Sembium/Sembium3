inherited fmOperationMovementsFilter: TfmOperationMovementsFilter
  Left = 309
  Top = 149
  ActiveControl = cbOperationMovementBranch
  Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
  ClientHeight = 515
  ClientWidth = 769
  PixelsPerInch = 96
  TextHeight = 13
  object gbTo: TGroupBox [0]
    Left = 392
    Top = 240
    Width = 369
    Height = 233
    TabOrder = 10
    object pnlToOperation: TPanel
      Left = 2
      Top = 15
      Width = 365
      Height = 210
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
      object lblToOperationNo: TLabel
        Left = 64
        Top = 8
        Width = 34
        Height = 13
        Caption = #1054#1087'. No'
        FocusControl = edtToOperationNo
      end
      object lblToOperationVariantNo: TLabel
        Left = 120
        Top = 8
        Width = 39
        Height = 13
        Caption = #1042#1072#1088'. No'
        FocusControl = edtToOperationVariantNo
      end
      object edtToStageNo: TDBEdit
        Left = 8
        Top = 24
        Width = 49
        Height = 21
        DataField = 'TO_ML_MODEL_STAGE_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object edtToOperationNo: TDBEdit
        Left = 64
        Top = 24
        Width = 49
        Height = 21
        DataField = 'TO_MLMS_OPERATION_NO'
        DataSource = dsData
        TabOrder = 1
      end
      object edtToOperationVariantNo: TDBEdit
        Left = 120
        Top = 24
        Width = 49
        Height = 21
        DataField = 'TO_MLMS_OPERATION_VARIANT_NO'
        DataSource = dsData
        TabOrder = 2
      end
      inline frToMlmsoDept: TfrDeptFilter
        Left = 8
        Top = 56
        Width = 345
        Height = 145
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = True
        inherited grpTreeNodeFilter: TGroupBox
          Width = 345
          Caption = ' '#1058#1055' '#1055#1088#1080#1077#1084#1072#1097#1086' '
          inherited lblsExternal: TLabel
            Width = 52
          end
          inherited lblIsActive: TLabel
            Width = 53
          end
          inherited lblStoreType: TLabel
            Width = 43
          end
          inherited pnlNodes: TPanel
            Width = 329
            inherited pnlNodesButtons: TPanel
              Left = 304
            end
            inherited grdChosenNodes: TAbmesDBGrid
              Width = 304
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NODE_NAME'
                  Footers = <>
                  Width = 207
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NODE_IDENTIFIER'
                  Footers = <>
                  Width = 63
                end>
            end
          end
        end
      end
    end
    object pnlToWaste: TPanel
      Left = 2
      Top = 225
      Width = 365
      Height = 208
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      inline frToWasteDept: TfrDeptFilter
        Left = 8
        Top = 56
        Width = 345
        Height = 145
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        inherited grpTreeNodeFilter: TGroupBox
          Width = 345
          Caption = ' '#1058#1055' '#1055#1088#1080#1077#1084#1072#1097#1086' '#1059#1054#1073' '#1041#1083#1086#1082#1080#1088#1072#1097' '
          inherited lblsExternal: TLabel
            Width = 52
          end
          inherited lblIsActive: TLabel
            Width = 53
          end
          inherited lblStoreType: TLabel
            Width = 43
          end
          inherited pnlNodes: TPanel
            Width = 329
            inherited pnlNodesButtons: TPanel
              Left = 304
            end
            inherited grdChosenNodes: TAbmesDBGrid
              Width = 304
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NODE_NAME'
                  Footers = <>
                  Width = 207
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NODE_IDENTIFIER'
                  Footers = <>
                  Width = 63
                end>
            end
          end
        end
      end
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 480
    Width = 769
    TabOrder = 11
    inherited pnlOKCancel: TPanel
      Left = 501
    end
    inherited pnlClose: TPanel
      Left = 412
    end
    inherited pnlApply: TPanel
      Left = 680
    end
  end
  object gbMovementIdentification: TGroupBox [2]
    Left = 8
    Top = 8
    Width = 161
    Height = 73
    Caption = ' ID '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1044#1074#1080#1078#1077#1085#1080#1077' '
    TabOrder = 0
    object lblOperationMovementBranch: TLabel
      Left = 8
      Top = 24
      Width = 33
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbOperationMovementBranch
    end
    object lblOperationMovementNo: TLabel
      Left = 72
      Top = 24
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtOperationMovementNo
    end
    object cbOperationMovementBranch: TJvDBLookupCombo
      Left = 8
      Top = 40
      Width = 57
      Height = 21
      DeleteKeyClear = False
      DataField = '_OM_BRANCH_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 0
    end
    object edtOperationMovementNo: TDBEdit
      Left = 72
      Top = 40
      Width = 81
      Height = 21
      DataField = 'OM_NO'
      DataSource = dsData
      TabOrder = 1
    end
  end
  object gbDates: TGroupBox [3]
    Left = 184
    Top = 8
    Width = 193
    Height = 73
    Caption = ' '#1044#1072#1090#1072' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '
    TabOrder = 1
    inline frDateInterval: TfrDateIntervalFrame
      Left = 24
      Top = 40
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
  end
  object rgIsStorno: TDBRadioGroup [4]
    Left = 648
    Top = 8
    Width = 113
    Height = 73
    BiDiMode = bdLeftToRight
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    DataField = 'IS_STORNO'
    DataSource = dsData
    Items.Strings = (
      #1053#1077#1072#1085#1091#1083#1080#1088#1072#1085#1080
      #1040#1085#1091#1083#1080#1088#1072#1085#1080
      #1042#1089#1080#1095#1082#1080)
    ParentBiDiMode = False
    TabOrder = 3
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object gbProductionOrder: TGroupBox [5]
    Left = 8
    Top = 88
    Width = 497
    Height = 65
    Caption = ' ID '#1054#1055#1042' '
    TabOrder = 4
    DesignSize = (
      497
      65)
    object lblProductionOrderBranch: TLabel
      Left = 72
      Top = 16
      Width = 33
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbProductionOrderBranch
    end
    object lblProductionOrderNo: TLabel
      Left = 136
      Top = 16
      Width = 40
      Height = 13
      Caption = #1054#1055#1042' No'
      FocusControl = edtProductionOrderNo
    end
    object lblPriority: TLabel
      Left = 264
      Top = 16
      Width = 80
      Height = 13
      Caption = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090
      FocusControl = edtProductionOrderNo
    end
    object lblProductionOrderType: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089
      FocusControl = cbProductionOrderType
    end
    object lblSaleTypeAbbrev: TLabel
      Left = 192
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbSaleTypeAbbrev
    end
    object lblIsClosed: TLabel
      Left = 376
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
      FocusControl = cbIsClosed
    end
    object cbProductionOrderBranch: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DeleteKeyClear = False
      DataField = '_SALE_BRANCH_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 1
    end
    object edtProductionOrderNo: TDBEdit
      Left = 136
      Top = 32
      Width = 49
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 2
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
      inherited lblDash: TLabel
        Width = 6
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
    object cbSaleTypeAbbrev: TJvDBLookupCombo
      Left = 192
      Top = 32
      Width = 57
      Height = 21
      DataField = '_SALE_TYPE_ABBREV'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 3
    end
    object cbIsClosed: TJvDBComboBox
      Left = 376
      Top = 32
      Width = 113
      Height = 21
      DataField = 'IS_CLOSED'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1053#1077#1087#1088#1080#1082#1083#1102#1095#1077#1085#1080
        #1055#1088#1080#1082#1083#1102#1095#1077#1085#1080)
      TabOrder = 5
      Values.Strings = (
        ''
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
      OnChange = cbToOperationOrWasteChange
    end
  end
  object gbMaterialListLineNo: TGroupBox [6]
    Left = 520
    Top = 88
    Width = 241
    Height = 65
    Caption = ' ID '#1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083' '
    TabOrder = 5
    DesignSize = (
      241
      65)
    object lblMllNoAsText: TLabel
      Left = 8
      Top = 16
      Width = 92
      Height = 13
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
      FocusControl = edtMllNoAsText
    end
    object lblForkNo: TLabel
      Left = 208
      Top = 16
      Width = 13
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1056#1082
    end
    object edtMllNoAsText: TDBEdit
      Left = 8
      Top = 32
      Width = 193
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'MLL_NO_AS_TEXT'
      DataSource = dsData
      TabOrder = 0
    end
    object edtForkNo: TDBEdit
      Left = 208
      Top = 32
      Width = 25
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'MLL_FORK_NO'
      DataSource = dsData
      TabOrder = 1
    end
  end
  object gbFrom: TGroupBox [7]
    Left = 8
    Top = 240
    Width = 369
    Height = 233
    Caption = ' '#1054#1058' '
    TabOrder = 8
    object pnlFromOperation: TPanel
      Left = 2
      Top = 15
      Width = 365
      Height = 210
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
      object lblFromOperationNo: TLabel
        Left = 64
        Top = 8
        Width = 34
        Height = 13
        Caption = #1054#1087'. No'
        FocusControl = edtFromOperationNo
      end
      object lblFromOperationVariantNo: TLabel
        Left = 120
        Top = 8
        Width = 39
        Height = 13
        Caption = #1042#1072#1088'. No'
        FocusControl = edtFromOperationVariantNo
      end
      object edtFromStageNo: TDBEdit
        Left = 8
        Top = 24
        Width = 49
        Height = 21
        DataField = 'FROM_ML_MODEL_STAGE_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object edtFromOperationNo: TDBEdit
        Left = 64
        Top = 24
        Width = 49
        Height = 21
        DataField = 'FROM_MLMS_OPERATION_NO'
        DataSource = dsData
        TabOrder = 1
      end
      object edtFromOperationVariantNo: TDBEdit
        Left = 120
        Top = 24
        Width = 49
        Height = 21
        DataField = 'FROM_MLMS_OPERATION_VARIANT_NO'
        DataSource = dsData
        TabOrder = 2
      end
      inline frFromMlmsoDept: TfrDeptFilter
        Left = 8
        Top = 56
        Width = 345
        Height = 145
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = True
        inherited grpTreeNodeFilter: TGroupBox
          Width = 345
          Caption = ' '#1058#1055' '#1055#1088#1077#1076#1072#1074#1072#1097#1086' '
          inherited lblsExternal: TLabel
            Width = 52
          end
          inherited lblIsActive: TLabel
            Width = 53
          end
          inherited lblStoreType: TLabel
            Width = 43
          end
          inherited pnlNodes: TPanel
            Width = 329
            inherited pnlNodesButtons: TPanel
              Left = 304
            end
            inherited grdChosenNodes: TAbmesDBGrid
              Width = 304
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NODE_NAME'
                  Footers = <>
                  Width = 207
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NODE_IDENTIFIER'
                  Footers = <>
                  Width = 63
                end>
            end
          end
        end
      end
    end
  end
  object pnlToOperationOrWaste: TPanel [8]
    Left = 400
    Top = 237
    Width = 170
    Height = 21
    BevelOuter = bvNone
    TabOrder = 9
    DesignSize = (
      170
      21)
    object lblToOperationOrWaste: TLabel
      Left = 3
      Top = 3
      Width = 24
      Height = 13
      Caption = #1050#1066#1052
    end
    object cbToOperationOrWaste: TJvDBComboBox
      Left = 30
      Top = 0
      Width = 137
      Height = 21
      DataField = 'TO_OPERATION_OR_WASTE'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1054#1087#1077#1088#1072#1094#1080#1103
        #1041#1083#1086#1082#1080#1088#1072#1085#1077)
      TabOrder = 0
      Values.Strings = (
        ''
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
      OnChange = cbToOperationOrWasteChange
    end
  end
  inline frDetail: TfrProductFieldEditFrameLabeled [9]
    Left = 392
    Top = 160
    Width = 369
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 65
    TabOrder = 7
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 369
      Caption = ' '#1050#1057#1063' '
      inherited pnlTreeNode: TPanel
        Width = 353
        inherited pnlTreeNodeName: TPanel
          Width = 171
          inherited edtTreeNodeName: TDBEdit
            Width = 170
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 171
        end
        inherited pnlRightButtons: TPanel
          Left = 294
        end
      end
    end
  end
  inline frResultProduct: TfrProductFieldEditFrameLabeled [10]
    Left = 8
    Top = 160
    Width = 369
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 65
    TabOrder = 6
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 369
      Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' ID '#1054#1055#1042' '
      inherited pnlTreeNode: TPanel
        Width = 353
        inherited pnlTreeNodeName: TPanel
          Width = 171
          inherited edtTreeNodeName: TDBEdit
            Width = 170
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 171
        end
        inherited pnlRightButtons: TPanel
          Left = 294
        end
      end
    end
  end
  object gbOperationMovementType: TGroupBox [11]
    Left = 392
    Top = 8
    Width = 249
    Height = 73
    Caption = ' '#1042#1080#1076' '
    TabOrder = 2
    object cbOperationMovementType: TJvDBLookupCombo
      Left = 8
      Top = 40
      Width = 233
      Height = 21
      DropDownCount = 10
      DeleteKeyClear = False
      DataField = '_OPERATION_MOVEMENT_TYPE_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [12]
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
    end
  end
  inherited dsData: TDataSource [13]
    Left = 88
  end
  inherited cdsData: TAbmesClientDataSet [14]
    Left = 56
  end
  inherited dsFilterVariants: TDataSource [15]
    Left = 40
    Top = 448
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 448
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 72
    Top = 448
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
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
