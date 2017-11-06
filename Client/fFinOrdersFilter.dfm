inherited fmFinOrdersFilter: TfmFinOrdersFilter
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
  ClientHeight = 468
  ClientWidth = 866
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 433
    Width = 866
    TabOrder = 12
    inherited pnlOKCancel: TPanel
      Left = 598
    end
    inherited pnlClose: TPanel
      Left = 509
    end
    inherited pnlApply: TPanel
      Left = 777
    end
  end
  object gbState: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 209
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblDash: TLabel
      Left = 103
      Top = 37
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinFinOrderState: TDBComboBoxEh
      Left = 8
      Top = 33
      Width = 89
      Height = 21
      DataField = 'MIN_STATUS_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxFinOrderState: TDBComboBoxEh
      Left = 116
      Top = 33
      Width = 85
      Height = 21
      DataField = 'MAX_STATUS_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object gbFinProcess: TGroupBox [2]
    Left = 224
    Top = 8
    Width = 97
    Height = 65
    Caption = ' '#1055#1088#1086#1094#1077#1089' '
    TabOrder = 1
    DesignSize = (
      97
      65)
    object cbFinProcess: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 81
      Height = 21
      DropDownCount = 13
      DropDownWidth = 200
      EscapeKeyReset = False
      DeleteKeyClear = False
      DataField = '_FIN_PROCESS_ABBREV'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object gbFinOrderIdentification: TGroupBox [3]
    Left = 328
    Top = 8
    Width = 145
    Height = 65
    Caption = ' ID '#1054#1055#1060' '
    TabOrder = 2
    object lblBranch: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbBranch
    end
    object lblFinOrderNo: TLabel
      Left = 72
      Top = 16
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
      FocusControl = edtFinOrderNo
    end
    object edtFinOrderNo: TDBEdit
      Left = 72
      Top = 32
      Width = 65
      Height = 21
      DataField = 'FIN_ORDER_NO'
      DataSource = dsData
      TabOrder = 1
    end
    object cbBranch: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 100
      DataField = 'FIN_ORDER_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 0
    end
  end
  object gbMovementDate: TGroupBox [4]
    Left = 8
    Top = 88
    Width = 161
    Height = 57
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '
    TabOrder = 3
    inline frMovementDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
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
  object gbExecDept: TGroupBox [5]
    Left = 176
    Top = 88
    Width = 297
    Height = 57
    Caption = ' '#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '
    TabOrder = 4
    inline frExecDept: TfrDeptFieldEditFrameBald
      Left = 8
      Top = 24
      Width = 281
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 297
        inherited pnlTreeNode: TPanel
          Width = 281
          inherited pnlTreeNodeName: TPanel
            Width = 134
            inherited edtTreeNodeName: TDBEdit
              Width = 133
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 134
          end
          inherited pnlRightButtons: TPanel
            Left = 245
          end
        end
      end
    end
  end
  object gbBaseDate: TGroupBox [6]
    Left = 8
    Top = 224
    Width = 161
    Height = 57
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1044#1072#1090#1072' '
    TabOrder = 7
    inline frBaseDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
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
  object gbFinStatus: TGroupBox [7]
    Left = 8
    Top = 296
    Width = 465
    Height = 65
    Caption = ' '#1060#1080#1085#1072#1085#1089#1086#1074' '#1089#1090#1072#1090#1091#1089' '
    TabOrder = 9
    object lblFinStatus: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
      FocusControl = cbFinStatus
    end
    object lblDocumentIdentifier: TLabel
      Left = 136
      Top = 16
      Width = 62
      Height = 13
      Caption = #1060#1072#1082#1090#1091#1088#1072' No'
      FocusControl = edtDocumentIdentifier
    end
    object Label1: TLabel
      Left = 304
      Top = 16
      Width = 103
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072
    end
    object cbFinStatus: TJvDBComboBox
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      DataField = 'HAS_DOCUMENT_IDENTIFIER'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1054#1095#1072#1082#1074#1072#1085
        #1056#1077#1072#1083#1077#1085)
      TabOrder = 0
      Values.Strings = (
        ''
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object edtDocumentIdentifier: TDBEdit
      Left = 136
      Top = 32
      Width = 161
      Height = 21
      DataField = 'DOCUMENT_IDENTIFIER'
      DataSource = dsData
      TabOrder = 1
    end
    inline frDocumentDateInterval: TfrDateIntervalFrame
      Left = 304
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 2
      TabStop = True
    end
  end
  object gbBndProcess: TGroupBox [8]
    Left = 480
    Top = 256
    Width = 377
    Height = 169
    Caption = ' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '
    TabOrder = 11
    object pnlBndSale: TPanel
      Left = 2
      Top = 159
      Width = 373
      Height = 144
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblSaleBranchNo: TLabel
        Left = 8
        Top = 8
        Width = 51
        Height = 13
        Caption = #1058#1055' '#1043#1083'.'
        FocusControl = cbSaleBranchNo
      end
      object lblSaleNo: TLabel
        Left = 72
        Top = 8
        Width = 41
        Height = 13
        Caption = #1054#1055#1055' No'
        FocusControl = edtSaleNo
      end
      object lblSaleShipmentNo: TLabel
        Left = 144
        Top = 8
        Width = 14
        Height = 13
        Caption = #1056#1050
        FocusControl = edtSaleShipmentNo
      end
      object lblBndSaleProduct: TLabel
        Left = 8
        Top = 56
        Width = 92
        Height = 13
        Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
        FocusControl = frBndSaleProduct
      end
      object edtSaleNo: TDBEdit
        Left = 72
        Top = 24
        Width = 65
        Height = 21
        DataField = 'SALE_NO'
        DataSource = dsData
        TabOrder = 1
      end
      object cbSaleBranchNo: TJvDBLookupCombo
        Left = 8
        Top = 24
        Width = 57
        Height = 21
        DataField = 'SALE_BRANCH_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089'. >'
        LookupField = 'BRANCH_CODE'
        LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
        LookupSource = dsBranches
        TabOrder = 0
      end
      object edtSaleShipmentNo: TDBEdit
        Left = 144
        Top = 24
        Width = 65
        Height = 21
        DataField = 'SALE_SHIPMENT_NO'
        DataSource = dsData
        TabOrder = 2
      end
      inline frBndSaleProduct: TfrProductFieldEditFrameBald
        Left = 8
        Top = 72
        Width = 353
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 3
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 369
          inherited pnlTreeNode: TPanel
            Width = 353
            inherited pnlTreeNodeName: TPanel
              Width = 183
              inherited edtTreeNodeName: TDBEdit
                Width = 182
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 183
            end
            inherited pnlRightButtons: TPanel
              Left = 294
            end
          end
        end
      end
    end
    object pnlBndDelivery: TPanel
      Left = 2
      Top = 303
      Width = 373
      Height = 144
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblDcdBranchNo: TLabel
        Left = 8
        Top = 8
        Width = 51
        Height = 13
        Caption = #1058#1055' '#1043#1083'.'
        FocusControl = cbDcdBranchNo
      end
      object lblDcdCode: TLabel
        Left = 72
        Top = 8
        Width = 43
        Height = 13
        Caption = #1055#1044#1044' No'
        FocusControl = edtDcdCode
      end
      object lblDeliveryProjectCode: TLabel
        Left = 144
        Top = 8
        Width = 14
        Height = 13
        Caption = 'No'
        FocusControl = edtDeliveryProjectCode
      end
      object lblBndDeliveryProduct: TLabel
        Left = 8
        Top = 56
        Width = 92
        Height = 13
        Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
        FocusControl = frBndDeliveryProduct
      end
      object edtDcdCode: TDBEdit
        Left = 72
        Top = 24
        Width = 65
        Height = 21
        DataField = 'DCD_CODE'
        DataSource = dsData
        TabOrder = 1
      end
      object cbDcdBranchNo: TJvDBLookupCombo
        Left = 8
        Top = 24
        Width = 57
        Height = 21
        DataField = 'DCD_BRANCH_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089'. >'
        LookupField = 'BRANCH_CODE'
        LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
        LookupSource = dsBranches
        TabOrder = 0
      end
      object edtDeliveryProjectCode: TDBEdit
        Left = 144
        Top = 24
        Width = 65
        Height = 21
        DataField = 'DELIVERY_PROJECT_CODE'
        DataSource = dsData
        TabOrder = 2
      end
      inline frBndDeliveryProduct: TfrProductFieldEditFrameBald
        Left = 8
        Top = 72
        Width = 353
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 3
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 369
          inherited pnlTreeNode: TPanel
            Width = 353
            inherited pnlTreeNodeName: TPanel
              Width = 183
              inherited edtTreeNodeName: TDBEdit
                Width = 182
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 183
            end
            inherited pnlRightButtons: TPanel
              Left = 294
            end
          end
        end
      end
    end
    object pnlBndGroupSale: TPanel
      Left = 2
      Top = 15
      Width = 373
      Height = 144
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object lblRequestBranchNo: TLabel
        Left = 8
        Top = 8
        Width = 51
        Height = 13
        Caption = #1058#1055' '#1043#1083'.'
        FocusControl = cbRequestBranchNo
      end
      object lblRequestNo: TLabel
        Left = 72
        Top = 8
        Width = 41
        Height = 13
        Caption = #1055#1044#1050' No'
        FocusControl = edtRequestNo
      end
      object edtRequestNo: TDBEdit
        Left = 72
        Top = 24
        Width = 65
        Height = 21
        DataField = 'REQUEST_NO'
        DataSource = dsData
        TabOrder = 1
      end
      object cbRequestBranchNo: TJvDBLookupCombo
        Left = 8
        Top = 24
        Width = 57
        Height = 21
        DataField = 'REQUEST_BRANCH_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089'. >'
        LookupField = 'BRANCH_CODE'
        LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
        LookupSource = dsBranches
        TabOrder = 0
      end
    end
    object pnlBndBOIOrder: TPanel
      Left = 2
      Top = 447
      Width = 373
      Height = 144
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lblBudgetOrderBanchNo: TLabel
        Left = 8
        Top = 8
        Width = 51
        Height = 13
        Caption = #1058#1055' '#1043#1083'.'
        FocusControl = cbBudgetOrderBanchNo
      end
      object lblBudgetOrderCode: TLabel
        Left = 72
        Top = 8
        Width = 31
        Height = 13
        Caption = #1041#1057' No'
        FocusControl = edtBudgetOrderCode
      end
      object lblBudgetOrderItemCode: TLabel
        Left = 144
        Top = 8
        Width = 39
        Height = 13
        Caption = #1051#1041#1057' No'
        FocusControl = edtBudgetOrderItemCode
      end
      object lblBndBOIOrderProduct: TLabel
        Left = 8
        Top = 56
        Width = 172
        Height = 13
        Caption = #1059#1054#1073' '#1089#1074#1098#1088#1079#1072#1085' '#1089' '#1041#1086#1088#1076#1077#1088#1086' '#1079#1072' '#1057#1088#1077#1076#1072
        FocusControl = frBndBOIOrderProduct
      end
      object lblBOIOrderCode: TLabel
        Left = 216
        Top = 8
        Width = 47
        Height = 13
        Caption = #1054#1051#1041#1057' No'
        FocusControl = edtBOIOrderCode
      end
      object lblBndBOIOrderBudgetProduct: TLabel
        Left = 8
        Top = 104
        Width = 35
        Height = 13
        Caption = #1057#1090#1072#1090#1080#1103
        FocusControl = frBndBOIOrderBudgetProduct
      end
      object edtBudgetOrderCode: TDBEdit
        Left = 72
        Top = 24
        Width = 65
        Height = 21
        DataField = 'BUDGET_ORDER_CODE'
        DataSource = dsData
        TabOrder = 1
      end
      object cbBudgetOrderBanchNo: TJvDBLookupCombo
        Left = 8
        Top = 24
        Width = 57
        Height = 21
        DataField = 'BUDGET_ORDER_BRANCH_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089'. >'
        LookupField = 'BRANCH_CODE'
        LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
        LookupSource = dsBranches
        TabOrder = 0
      end
      object edtBudgetOrderItemCode: TDBEdit
        Left = 144
        Top = 24
        Width = 65
        Height = 21
        DataField = 'BUDGET_ORDER_ITEM_CODE'
        DataSource = dsData
        TabOrder = 2
      end
      inline frBndBOIOrderProduct: TfrProductFieldEditFrameBald
        Left = 8
        Top = 72
        Width = 353
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 4
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 369
          inherited pnlTreeNode: TPanel
            Width = 353
            inherited pnlTreeNodeName: TPanel
              Width = 183
              inherited edtTreeNodeName: TDBEdit
                Width = 182
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 183
            end
            inherited pnlRightButtons: TPanel
              Left = 294
            end
          end
        end
      end
      object edtBOIOrderCode: TDBEdit
        Left = 216
        Top = 24
        Width = 65
        Height = 21
        DataField = 'BOI_ORDER_CODE'
        DataSource = dsData
        TabOrder = 3
      end
      inline frBndBOIOrderBudgetProduct: TfrProductFieldEditFrameBald
        Left = 8
        Top = 120
        Width = 353
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 5
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 369
          inherited pnlTreeNode: TPanel
            Width = 353
            inherited pnlTreeNodeName: TPanel
              Width = 183
              inherited edtTreeNodeName: TDBEdit
                Width = 182
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 183
            end
            inherited pnlRightButtons: TPanel
              Left = 294
            end
          end
        end
      end
    end
  end
  inline frWorkFinancialProduct: TfrProductFieldEditFrame [9]
    Left = 8
    Top = 160
    Width = 465
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 5
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 465
      inherited pnlTreeNode: TPanel
        Width = 449
        inherited pnlTreeNodeName: TPanel
          Width = 279
          inherited edtTreeNodeName: TDBEdit
            Width = 278
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 279
        end
        inherited pnlRightButtons: TPanel
          Left = 390
        end
      end
    end
  end
  inline frFinClass: TfrFinClassFieldEditFrame [10]
    Left = 8
    Top = 376
    Width = 465
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 10
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 465
      Caption = ' '#1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1057#1090#1072#1090#1080#1103' '
      inherited pnlTreeNode: TPanel
        Width = 449
        inherited pnlTreeNodeName: TPanel
          Width = 302
          inherited edtTreeNodeName: TDBEdit
            Width = 301
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 302
        end
        inherited pnlRightButtons: TPanel
          Left = 413
        end
      end
    end
  end
  inline frCompanyFilter: TfrCompanyFilter [11]
    Left = 480
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    inherited grpTreeNodeFilter: TGroupBox
      inherited pnlChosenCompanies: TPanel
        inherited grdChosenCompanies: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
      inherited pnlNotChosenCompanies: TPanel
        inherited grdNotChosenCompanies: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
      inherited pnlBottom: TPanel
        inherited lblCommonStatus: TLabel
          Width = 45
        end
      end
    end
  end
  object gbInOut: TGroupBox [12]
    Left = 176
    Top = 227
    Width = 105
    Height = 54
    Caption = ' '#1055#1086#1089#1086#1082#1072' '
    TabOrder = 8
    object cbInOut: TJvDBComboBox
      Left = 8
      Top = 24
      Width = 89
      Height = 21
      DataField = 'IN_OUT'
      DataSource = dsData
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1042#1093#1086#1076
        #1048#1079#1093#1086#1076)
      TabOrder = 0
      Values.Strings = (
        ''
        '1'
        '-1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inherited alActions: TActionList [13]
    OnUpdate = alActionsUpdate
    Left = 152
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
    end
  end
  inherited dsData: TDataSource [14]
    Left = 120
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [15]
    Left = 48
    Top = 440
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 88
  end
  inherited dsFilterVariants: TDataSource
    Left = 72
    Top = 440
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 96
    Top = 456
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Filtered = True
    Params = <>
    ProviderName = 'prvBranches'
    Left = 336
    Top = 72
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      DisplayWidth = 10
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayWidth = 3
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 368
    Top = 72
  end
end
