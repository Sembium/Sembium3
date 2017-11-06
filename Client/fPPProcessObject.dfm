inherited frPPProcessObject: TfrPPProcessObject
  Width = 782
  Height = 67
  object lblBranch: TLabel [0]
    Left = 56
    Top = 8
    Width = 48
    Height = 13
    Caption = #1058#1055' '#1043#1083'.'
  end
  object lblPPNo: TLabel [1]
    Left = 120
    Top = 8
    Width = 37
    Height = 13
    Caption = #1054#1055#1042' No'
    FocusControl = edtPPNo
  end
  object lblSaleTypeAbbrev: TLabel [2]
    Left = 216
    Top = 8
    Width = 19
    Height = 13
    Caption = #1042#1080#1076
  end
  object lblIsWasteCompensator: TLabel [3]
    Left = 264
    Top = 8
    Width = 81
    Height = 13
    Caption = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1054#1055#1042
  end
  object lblProductionOrderTypeAbbrev: TLabel [4]
    Left = 8
    Top = 8
    Width = 36
    Height = 13
    Caption = #1055#1088#1086#1094#1077#1089
  end
  object lblProjectProduct: TLabel [5]
    Left = 368
    Top = 8
    Width = 61
    Height = 13
    Caption = #1059#1054#1073' '#1055#1088#1086#1077#1082#1090
  end
  object cbBranch: TJvDBLookupCombo [6]
    Left = 56
    Top = 24
    Width = 57
    Height = 21
    DataField = '_SALE_BRANCH_IDENTIFIER'
    DataSource = dsProcessObjectParams
    DisplayEmpty = ' '
    EmptyValue = '0'
    TabOrder = 0
    OnExit = cbBranchExit
  end
  object edtPPNo: TDBEdit [7]
    Left = 120
    Top = 24
    Width = 89
    Height = 21
    DataField = 'SALE_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 1
  end
  object btnShowProcessObjectForm: TButton [8]
    Left = 664
    Top = 22
    Width = 97
    Height = 25
    Action = actShowProcessObjectForm
    TabOrder = 2
  end
  object edtSaleTypeAbbrev: TDBEdit [9]
    Left = 216
    Top = 24
    Width = 33
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'SALE_TYPE_ABBREV'
    DataSource = dsProcessObjectParams
    TabOrder = 3
  end
  object edtIsWasteCompensator: TDBEdit [10]
    Left = 264
    Top = 24
    Width = 89
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'IS_WASTE_COMPENSATOR'
    DataSource = dsProcessObjectParams
    TabOrder = 4
  end
  object edtProductionOrderTypeAbbrev: TDBEdit [11]
    Left = 8
    Top = 24
    Width = 41
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'PRODUCTION_ORDER_TYPE_ABBREV'
    DataSource = dsProcessObjectParams
    TabOrder = 5
  end
  inline frProjectProduct: TfrProductFieldEditFrameBald [12]
    Left = 368
    Top = 24
    Width = 281
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 6
    inherited gbTreeNode: TGroupBox
      Width = 297
      inherited pnlTreeNode: TPanel
        Width = 281
        inherited pnlTreeNodeName: TPanel
          Width = 111
          inherited edtTreeNodeName: TDBEdit
            Width = 110
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 111
        end
        inherited pnlRightButtons: TPanel
          Left = 222
        end
      end
    end
  end
  inherited alActions: TActionList [13]
    Left = 512
  end
  inherited dsData: TDataSource [14]
    Left = 544
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet [15]
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleID'
    ConnectionBroker = dmMain.conStore
    Left = 496
    Top = 40
    object cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet [16]
    Left = 528
    Top = 40
    object pdsProcessObjectParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object pdsProcessObjectParamsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object pdsProcessObjectParamsSALE_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object pdsProcessObjectParamsPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object pdsProcessObjectParamsIS_WASTE_COMPENSATOR: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_WASTE_COMPENSATOR'
      DisplayBoolValues = #1057';'#1054
      FieldValueType = fvtBoolean
    end
    object pdsProcessObjectParamsSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsProcessObjectParamsSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object pdsProcessObjectParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'SALE_BRANCH_CODE'
      Size = 255
      Lookup = True
    end
    object pdsProcessObjectParamsSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object pdsProcessObjectParamsPROJECT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROJECT_PRODUCT_CODE'
    end
    object pdsProcessObjectParamsHAS_MATERIAL_LIST: TAbmesFloatField
      FieldName = 'HAS_MATERIAL_LIST'
      FieldValueType = fvtBoolean
    end
  end
  inherited dsProcessObjectParams: TDataSource [17]
    Left = 560
    Top = 40
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
    ProviderName = 'prvSaleCustomID'
    ConnectionBroker = dmMain.conStore
    AfterOpen = cdsProcessObjectCustomIDAfterOpen
    Left = 576
    Top = 0
    object cdsProcessObjectCustomIDSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsProcessObjectCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsProcessObjectCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object cdsProcessObjectCustomIDPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsProcessObjectCustomIDIS_WASTE_COMPENSATOR: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_WASTE_COMPENSATOR'
      DisplayBoolValues = #1057';'#1054
    end
    object cdsProcessObjectCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsProcessObjectCustomIDPROJECT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROJECT_PRODUCT_CODE'
    end
    object cdsProcessObjectCustomIDHAS_MATERIAL_LIST: TAbmesFloatField
      FieldName = 'HAS_MATERIAL_LIST'
      FieldValueType = fvtBoolean
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBranches'
    ConnectionBroker = dmMain.conCompany
    Left = 600
    Top = 40
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
  end
end
