inherited frStoreDealProcessObject: TfrStoreDealProcessObject
  Width = 766
  Height = 50
  ExplicitWidth = 766
  ExplicitHeight = 50
  object lblStoreDealProcessObjectStore: TLabel [0]
    Left = 8
    Top = 8
    Width = 87
    Height = 13
    Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
  end
  object lblStoreDealDate: TLabel [1]
    Left = 384
    Top = 8
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object lblStoreDealNo: TLabel [2]
    Left = 496
    Top = 8
    Width = 13
    Height = 13
    Caption = 'No'
    FocusControl = edtStoreDealNo
  end
  object edtStoreDealNo: TDBEdit [3]
    Left = 496
    Top = 24
    Width = 33
    Height = 21
    DataField = 'STORE_DEAL_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 0
  end
  inline frStoreDealProcessObjectStore: TfrDeptFieldEditFrameBald [4]
    Left = 8
    Top = 24
    Width = 369
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 24
    ExplicitWidth = 369
    inherited gbTreeNode: TGroupBox
      Width = 385
      ExplicitWidth = 385
      inherited pnlTreeNode: TPanel
        Width = 369
        ExplicitWidth = 369
        inherited pnlTreeNodeName: TPanel
          Width = 222
          ExplicitWidth = 222
          inherited edtTreeNodeName: TDBEdit
            Width = 221
            ExplicitWidth = 221
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 222
          ExplicitLeft = 222
        end
        inherited pnlRightButtons: TPanel
          Left = 333
          ExplicitLeft = 333
        end
      end
    end
    inherited alActions: TActionList
      inherited actFrame: TAction
        OnUpdate = frStoreDealProcessObjectStoreactFrameUpdate
      end
    end
    inherited dsData: TDataSource
      DataSet = pdsProcessObjectParams
    end
    inherited dsTreeNode: TDataSource
      Left = 392
    end
  end
  inline frStoreDealDate: TfrDateFieldEditFrame [5]
    Left = 384
    Top = 24
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 2
    TabStop = True
    ExplicitLeft = 384
    ExplicitTop = 24
    inherited dsData: TDataSource
      DataSet = pdsProcessObjectParams
    end
  end
  object btnShowProcessObjectForm: TButton [6]
    Left = 664
    Top = 22
    Width = 97
    Height = 25
    Action = actShowProcessObjectForm
    TabOrder = 3
  end
  inherited alActions: TActionList [7]
    Left = 272
    Top = 40
  end
  inherited dsData: TDataSource [8]
    Left = 336
    Top = 40
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet [9]
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvStoreDealID'
    ConnectionBroker = dmMain.conStore
    Left = 376
    Top = 40
    object cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet [10]
    Left = 408
    Top = 40
    object pdsProcessObjectParamsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object pdsProcessObjectParamsSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsProcessObjectParamsSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object pdsProcessObjectParamsSTORE_DEAL_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'STORE_DEAL_NO'
    end
    object pdsProcessObjectParamsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object pdsProcessObjectParamsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
  end
  inherited dsProcessObjectParams: TDataSource
    Left = 440
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
    ProviderName = 'prvStoreDealCustomID'
    ConnectionBroker = dmMain.conStore
    AfterOpen = cdsProcessObjectCustomIDAfterOpen
    Left = 384
    Top = 8
    object cdsProcessObjectCustomIDSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsProcessObjectCustomIDSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
    end
    object cdsProcessObjectCustomIDSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object cdsProcessObjectCustomIDSTORE_DEAL_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO'
    end
    object cdsProcessObjectCustomIDSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
  end
end
