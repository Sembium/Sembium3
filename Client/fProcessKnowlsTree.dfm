inherited fmProcessKnowlsTree: TfmProcessKnowlsTree
  Caption = #1055#1086#1079#1085#1072#1085#1080#1103' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077
  ClientHeight = 591
  ClientWidth = 795
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 548
    Width = 795
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 527
    end
    inherited pnlClose: TPanel
      Left = 438
    end
    inherited pnlApply: TPanel
      Left = 706
    end
  end
  inherited tvTree: TJvDBTreeView
    Width = 795
    Height = 524
    DataSource = dsData
    MasterField = 'PRC_KNOWL_CODE'
    DetailField = 'PARENT_PRC_KNOWL_CODE'
    IconField = '_PRC_KNOWL_TREE_ICON'
    ItemField = '_PRC_KNOWL_DISPLAY_NAME'
    TabOrder = 0
    Images = dmMain.ilActions
  end
  inherited pnlTop: TPanel
    Width = 795
    TabOrder = 2
    object tlbDocs: TToolBar
      Left = 263
      Top = 0
      Width = 85
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 36
      Images = dmMain.ilDocs
      TabOrder = 1
      object sepDocs: TToolButton
        Left = 0
        Top = 0
        Width = 8
        ImageIndex = 0
        Style = tbsSeparator
        Visible = False
      end
      object lblDoc: TLabel
        Left = 8
        Top = 0
        Width = 41
        Height = 24
        Caption = #1055#1088#1086#1094#1077#1089' '
        Layout = tlCenter
      end
      object btnDoc: TToolButton
        Left = 49
        Top = 0
        Action = actDoc
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1086#1079#1085#1072#1085#1080#1103' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077
    end
    inherited actShowInactive: TAction
      Visible = False
    end
    object actDoc: TAction [13]
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1055#1086#1079#1085#1072#1085#1080#1077' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    ProviderName = 'prvProcessKnowls'
    BeforeDelete = cdsDataBeforeDelete
    OnCalcFields = cdsDataCalcFields
    object cdsDataPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
      Required = True
    end
    object cdsDataPARENT_PRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_KNOWL_CODE'
    end
    object cdsDataPRC_KNOWL_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_KNOWL_LOCAL_NO'
      Required = True
    end
    object cdsDataPRC_KNOWL_NAME: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_NAME'
      Required = True
      Size = 100
    end
    object cdsDataPRC_KNOWL_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataPRC_KNOWL_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_FULL_NO'
      Size = 100
    end
    object cdsDataPRC_KNOWL_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_FORMATTED_FULL_NO'
      Size = 250
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
    object cdsData_PRC_KNOWL_TREE_ICON: TIntegerField
      FieldKind = fkCalculated
      FieldName = '_PRC_KNOWL_TREE_ICON'
      Calculated = True
    end
    object cdsData_PRC_KNOWL_DISPLAY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRC_KNOWL_DISPLAY_NAME'
      Size = 150
      Calculated = True
    end
  end
  inherited cdsPrintTree: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    FieldDefs = <
      item
        Name = 'NODE_ID'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PARENT_NODE_ID'
        DataType = ftFloat
      end
      item
        Name = 'NODE_NAME'
        DataType = ftWideString
        Size = 184
      end
      item
        Name = 'FORMATED_NODE_NO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'NODE_LEVEL'
        DataType = ftFloat
      end
      item
        Name = 'NODE_CHILD_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'NODE_TYPE'
        DataType = ftFloat
      end
      item
        Name = 'IS_LAST_CHILD'
        DataType = ftFloat
      end
      item
        Name = 'HAS_CHILDREN'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcessKnowlsPrintTree'
    object cdsPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      Required = True
    end
    object cdsPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object cdsPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 184
    end
    object cdsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField
      FieldName = 'FORMATED_NODE_NO'
      Size = 50
    end
    object cdsPrintTreeNODE_LEVEL: TAbmesFloatField
      FieldName = 'NODE_LEVEL'
    end
    object cdsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object cdsPrintTreeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object cdsPrintTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object cdsPrintTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
  end
end
