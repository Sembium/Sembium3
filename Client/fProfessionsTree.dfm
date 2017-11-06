inherited fmProfessionsTree: TfmProfessionsTree
  Caption = #1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080
  ClientHeight = 591
  ClientWidth = 795
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 548
    Width = 795
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
    MasterField = 'PROFESSION_CODE'
    DetailField = 'PARENT_PROFESSION_CODE'
    IconField = '_PROFESSION_TREE_ICON'
    ItemField = '_PROFESSION_DISPLAY_NAME'
    Images = dmMain.ilActions
  end
  inherited pnlTop: TPanel
    Width = 795
    inherited tlbButtons: TToolBar
      inherited btnPrintSubTree: TToolButton [6]
        Left = 143
      end
      inherited sepBetweenMoveAndPrint: TToolButton [7]
        Left = 167
      end
    end
    object tlbDocs: TToolBar
      Left = 263
      Top = 0
      Width = 122
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonWidth = 36
      Images = dmMain.ilDocs
      TabOrder = 1
      object sepAfterShowInactive: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'sepAfterShowInactive'
        Style = tbsSeparator
        Visible = False
      end
      object lblDoc: TLabel
        Left = 8
        Top = 0
        Width = 78
        Height = 22
        Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
        Layout = tlCenter
      end
      object btnDoc: TToolButton
        Left = 86
        Top = 0
        Action = actDoc
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080
    end
    inherited actShowInactive: TAction
      Visible = False
    end
    object actDoc: TAction
      Caption = 'actDoc'
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    ProviderName = 'prvProfessions'
    BeforeDelete = cdsDataBeforeDelete
    OnCalcFields = cdsDataCalcFields
    object cdsDataPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsDataPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
    end
    object cdsDataRECORD_CHANGED: TAbmesFloatField
      FieldName = 'RECORD_CHANGED'
    end
    object cdsDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object cdsDataDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsDataDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsDataACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsDataUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object cdsDataUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsDataPROFESSION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_TYPE_NAME'
    end
    object cdsDataPROFESSION_KIND_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_NAME'
      Size = 200
    end
    object cdsDataPROFESSION_LOCAL_NO: TAbmesFloatField
      FieldName = 'PROFESSION_LOCAL_NO'
      Required = True
    end
    object cdsDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
    object cdsDataPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      Size = 100
    end
    object cdsData_PROFESSION_TREE_ICON: TIntegerField
      FieldKind = fkCalculated
      FieldName = '_PROFESSION_TREE_ICON'
      Calculated = True
    end
    object cdsData_PROFESSION_DISPLAY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROFESSION_DISPLAY_NAME'
      Size = 150
      Calculated = True
    end
    object cdsDataPARENT_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'PARENT_PROFESSION_CODE'
    end
  end
  inherited cdsPrintTree: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
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
        Size = 101
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
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProfessionsPrintTree'
    object cdsPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      Required = True
    end
    object cdsPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object cdsPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 101
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
