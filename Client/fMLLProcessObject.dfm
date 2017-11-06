inherited frMLLProcessObject: TfrMLLProcessObject
  Width = 765
  Height = 127
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
  object lblNoAsText: TLabel [2]
    Left = 312
    Top = 8
    Width = 83
    Height = 13
    Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083
    FocusControl = edtNoAsText
  end
  object lblForkNo: TLabel [3]
    Left = 408
    Top = 8
    Width = 12
    Height = 13
    Caption = #1056#1082
    FocusControl = edtForkNo
  end
  object lblProductionOrderTypeAbbrev: TLabel [4]
    Left = 8
    Top = 8
    Width = 36
    Height = 13
    Caption = #1055#1088#1086#1094#1077#1089
  end
  object lblSaleTypeAbbrev: TLabel [5]
    Left = 176
    Top = 8
    Width = 19
    Height = 13
    Caption = #1042#1080#1076
  end
  object lblIsWasteCompensator: TLabel [6]
    Left = 216
    Top = 8
    Width = 81
    Height = 13
    Caption = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1054#1055#1042
  end
  object lblProjectProduct: TLabel [7]
    Left = 466
    Top = 8
    Width = 61
    Height = 13
    Caption = #1059#1054#1073' '#1055#1088#1086#1077#1082#1090
  end
  object edtPPNo: TDBEdit [8]
    Left = 120
    Top = 24
    Width = 49
    Height = 21
    DataField = 'SALE_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 1
    OnChange = cbBranchChange
  end
  object edtNoAsText: TDBEdit [9]
    Left = 312
    Top = 24
    Width = 97
    Height = 21
    DataField = 'NO_AS_TEXT'
    DataSource = dsProcessObjectParams
    TabOrder = 2
    OnChange = cbBranchChange
  end
  object cbBranch: TJvDBLookupCombo [10]
    Left = 56
    Top = 24
    Width = 57
    Height = 21
    DataField = '_SALE_BRANCH_IDENTIFIER'
    DataSource = dsProcessObjectParams
    DisplayEmpty = ' '
    EmptyValue = '0'
    TabOrder = 0
    OnChange = cbBranchChange
    OnExit = cbBranchExit
  end
  object edtForkNo: TDBEdit [11]
    Left = 408
    Top = 24
    Width = 25
    Height = 21
    DataField = 'FORK_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 3
    OnChange = cbBranchChange
  end
  object btnShowProcessObjectForm: TButton [12]
    Left = 664
    Top = 22
    Width = 97
    Height = 25
    Action = actShowProcessObjectForm
    TabOrder = 4
  end
  object edtProductionOrderTypeAbbrev: TDBEdit [13]
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
  object edtSaleTypeAbbrev: TDBEdit [14]
    Left = 176
    Top = 24
    Width = 33
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'SALE_TYPE_ABBREV'
    DataSource = dsProcessObjectParams
    TabOrder = 6
  end
  object edtIsWasteCompensator: TDBEdit [15]
    Left = 216
    Top = 24
    Width = 89
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'IS_WASTE_COMPENSATOR'
    DataSource = dsProcessObjectParams
    TabOrder = 7
  end
  object edtIsWasteFork: TDBEdit [16]
    Left = 432
    Top = 24
    Width = 25
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'IS_WASTE_FORK'
    DataSource = dsProcessObjectParams
    TabOrder = 8
  end
  inline frProjectProduct: TfrProductFieldEditFrameBald [17]
    Left = 465
    Top = 24
    Width = 192
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 9
    inherited gbTreeNode: TGroupBox
      Width = 208
      inherited pnlTreeNode: TPanel
        Width = 192
        inherited pnlTreeNodeName: TPanel
          Width = 54
          inherited edtTreeNodeName: TDBEdit
            Width = 53
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 54
          Width = 79
          inherited edtTreeNodeNo: TJvDBComboEdit
            Width = 79
          end
          inherited pnlEditButtons: TPanel
            Left = 39
          end
        end
        inherited pnlRightButtons: TPanel
          Left = 133
        end
      end
    end
  end
  inherited alActions: TActionList [18]
    Left = 24
    Top = 48
  end
  inherited dsData: TDataSource [19]
    Left = 88
    Top = 48
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet [20]
    ConnectionBroker = dmMain.conStore
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
      end
      item
        DataType = ftWideString
        Name = 'NO_AS_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MAIN_DEPT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MAIN_DEPT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHECK_MLL_HAS_PRODUCT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CHECK_MLL_HAS_PRODUCT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CHECK_ML_IS_ACTIVATED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CHECK_ML_IS_ACTIVATED'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'prvMLLID'
    BeforeOpen = cdsProcessObjectIDBeforeOpen
    Left = 224
    Top = 48
    object cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
    object cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet [21]
    BeforePost = pdsProcessObjectParamsBeforePost
    Left = 256
    Top = 48
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
    object pdsProcessObjectParamsSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsProcessObjectParamsSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object pdsProcessObjectParamsNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      OnValidate = pdsProcessObjectParamsNO_AS_TEXTValidate
      Size = 255
    end
    object pdsProcessObjectParamsFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object pdsProcessObjectParamsMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      Size = 255
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
      Alignment = taLeftJustify
      FieldName = 'IS_WASTE_COMPENSATOR'
      DisplayBoolValues = #1057';'#1054
      FieldValueType = fvtBoolean
    end
    object pdsProcessObjectParamsML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object pdsProcessObjectParamsML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object pdsProcessObjectParamsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object pdsProcessObjectParamsMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object pdsProcessObjectParamsIS_WASTE_FORK: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_WASTE_FORK'
      DisplayBoolValues = #1041#1083';'
      FieldValueType = fvtBoolean
    end
    object pdsProcessObjectParamsPROJECT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROJECT_PRODUCT_CODE'
    end
  end
  inherited dsProcessObjectParams: TDataSource [22]
    Left = 288
    Top = 48
  end
  inherited cdsProcessObjectCustomID: TAbmesClientDataSet
    ConnectionBroker = dmMain.conStore
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
    ProviderName = 'prvMLLCustomID'
    Top = 48
    object cdsProcessObjectCustomIDSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsProcessObjectCustomIDMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      ProviderFlags = []
      Size = 46
    end
    object cdsProcessObjectCustomIDNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object cdsProcessObjectCustomIDFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object cdsProcessObjectCustomIDANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsProcessObjectCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object cdsProcessObjectCustomIDPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsProcessObjectCustomIDIS_WASTE_COMPENSATOR: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR'
    end
    object cdsProcessObjectCustomIDML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object cdsProcessObjectCustomIDMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object cdsProcessObjectCustomIDIS_WASTE_FORK: TAbmesFloatField
      FieldName = 'IS_WASTE_FORK'
      DisplayBoolValues = #1041#1088';'
    end
    object cdsProcessObjectCustomIDPROJECT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROJECT_PRODUCT_CODE'
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 168
    Top = 48
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
  end
end
