inherited frBPOIProcessObject: TfrBPOIProcessObject
  Width = 770
  Height = 132
  ExplicitWidth = 770
  ExplicitHeight = 132
  object lblBudgetOrderBrachIdentifier: TLabel [0]
    Left = 56
    Top = 8
    Width = 48
    Height = 13
    Caption = #1058#1055' '#1043#1083'.'
  end
  object lblBudgerOrderCode: TLabel [1]
    Left = 120
    Top = 8
    Width = 13
    Height = 13
    Caption = #1041#1057
  end
  object lblBudgetOrderItemCode: TLabel [2]
    Left = 168
    Top = 8
    Width = 20
    Height = 13
    Caption = #1051#1041#1057
  end
  object lblBudgetProductOrderItemNo: TLabel [3]
    Left = 240
    Top = 8
    Width = 28
    Height = 13
    Caption = #1054#1051#1041#1057
  end
  object lblSaleDealTypeAbbrev: TLabel [4]
    Left = 8
    Top = 8
    Width = 18
    Height = 13
    Caption = #1058#1080#1087
  end
  object lblBudgetOrderItemTypeAbbrev: TLabel [5]
    Left = 208
    Top = 8
    Width = 19
    Height = 13
    Caption = #1042#1080#1076
  end
  object lblBudgetOrderProduct: TLabel [6]
    Left = 304
    Top = 8
    Width = 168
    Height = 13
    Caption = #1059#1054#1073' '#1089#1074#1098#1088#1079#1072#1085' '#1089' '#1041#1086#1088#1076#1077#1088#1086' '#1079#1072' '#1057#1088#1077#1076#1072
  end
  object cbBudgetOrderBrachIdentifier: TJvDBLookupCombo [7]
    Left = 56
    Top = 24
    Width = 57
    Height = 21
    DeleteKeyClear = False
    DataField = 'BUDGET_ORDER_BRANCH_CODE'
    DataSource = dsProcessObjectParams
    LookupField = 'BRANCH_CODE'
    LookupDisplay = 'BRANCH_IDENTIFIER'
    LookupSource = dsBranches
    TabOrder = 1
  end
  object edtBudgerOrderCode: TDBEdit [8]
    Left = 120
    Top = 24
    Width = 41
    Height = 21
    DataField = 'BUDGET_ORDER_CODE'
    DataSource = dsProcessObjectParams
    TabOrder = 2
  end
  object edtBudgetOrderItemCode: TDBEdit [9]
    Left = 168
    Top = 24
    Width = 41
    Height = 21
    DataField = 'BUDGET_ORDER_ITEM_CODE'
    DataSource = dsProcessObjectParams
    TabOrder = 3
  end
  object edtBudgetProductOrderItemNo: TDBEdit [10]
    Left = 240
    Top = 24
    Width = 41
    Height = 21
    DataField = 'BOI_ORDER_CODE'
    DataSource = dsProcessObjectParams
    TabOrder = 5
  end
  object btnShowProcessObjectForm: TButton [11]
    Left = 664
    Top = 22
    Width = 97
    Height = 25
    Action = actShowProcessObjectForm
    TabOrder = 7
  end
  object edtSaleDealTypeAbbrev: TDBEdit [12]
    Left = 8
    Top = 24
    Width = 41
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'BUDGET_ORDER_CLASS_ABBREV'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 0
  end
  object edtBudgetOrderItemTypeAbbrev: TDBEdit [13]
    Left = 208
    Top = 24
    Width = 25
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 4
  end
  inline frBudgetOrderProduct: TfrProductFieldEditFrameBald [14]
    Left = 304
    Top = 24
    Width = 325
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 6
    ExplicitLeft = 304
    ExplicitTop = 24
    ExplicitWidth = 325
    inherited gbTreeNode: TGroupBox
      Width = 341
      ExplicitWidth = 341
      inherited pnlTreeNode: TPanel
        Width = 325
        ExplicitWidth = 325
        inherited pnlTreeNodeName: TPanel
          Width = 155
          ExplicitWidth = 155
          inherited edtTreeNodeName: TDBEdit
            Width = 154
            ExplicitWidth = 154
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 155
          ExplicitLeft = 155
        end
        inherited pnlRightButtons: TPanel
          Left = 266
          ExplicitLeft = 266
        end
      end
    end
    inherited dsData: TDataSource
      DataSet = pdsProcessObjectParams
    end
  end
  inherited alActions: TActionList [15]
    Left = 40
    Top = 48
  end
  inherited dsData: TDataSource [16]
    Top = 48
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet [17]
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBOIOrderObjectID'
    ConnectionBroker = dmMain.conStore
    Top = 48
    object cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
    object cdsProcessObjectIDBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
      Required = True
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet [18]
    Top = 48
    object pdsProcessObjectParamsBUDGET_ORDER_CLASS_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'BUDGET_ORDER_CLASS_ABBREV'
      Size = 100
    end
    object pdsProcessObjectParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object pdsProcessObjectParamsBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object pdsProcessObjectParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object pdsProcessObjectParamsBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
    object pdsProcessObjectParamsBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object pdsProcessObjectParamsBUDGET_ORDER_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_PRODUCT_CODE'
    end
    object pdsProcessObjectParamsBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
      Size = 100
    end
    object pdsProcessObjectParamsBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
    end
  end
  inherited dsProcessObjectParams: TDataSource [19]
    Top = 48
  end
  inherited cdsProcessObjectCustomID: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBOIOrderObjectCustomID'
    ConnectionBroker = dmMain.conStore
    Top = 80
    object cdsProcessObjectCustomIDBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsProcessObjectCustomIDBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsProcessObjectCustomIDBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
    object cdsProcessObjectCustomIDBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object cdsProcessObjectCustomIDBUDGET_ORDER_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_CLASS_ABBREV'
      Size = 100
    end
    object cdsProcessObjectCustomIDBUDGET_ORDER_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_PRODUCT_CODE'
    end
    object cdsProcessObjectCustomIDBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
      Size = 100
    end
    object cdsProcessObjectCustomIDBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBranches'
    ConnectionBroker = dmMain.conCompany
    Left = 200
    Top = 88
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 168
    Top = 88
  end
end
