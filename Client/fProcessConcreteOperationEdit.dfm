inherited fmProcessConcreteOperationEdit: TfmProcessConcreteOperationEdit
  Caption = 'ProcessConcreteOp'
  ClientHeight = 292
  ClientWidth = 515
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 257
    Width = 515
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 247
    end
    inherited pnlClose: TPanel
      Left = 158
    end
    inherited pnlApply: TPanel
      Left = 426
      Visible = False
    end
  end
  object gbProcessConcreteOperation: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 499
    Height = 129
    Anchors = [akLeft, akTop, akRight]
    Caption = 'ProcessConcreteOp'
    TabOrder = 0
    DesignSize = (
      499
      129)
    object lblName: TLabel
      Left = 128
      Top = 24
      Width = 112
      Height = 13
      Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object lblShortName: TLabel
      Left = 128
      Top = 77
      Width = 115
      Height = 13
      Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object btnNameToShortName: TSpeedButton
      Left = 251
      Top = 66
      Width = 46
      Height = 22
      Action = actCopyNameToShortName
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BF
        BF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF00BFBF00BF
        BF00BFBF00BFBF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000000BFBF00BFBF00BFBF00BFBF00BFBF00BFBF00BFBF00000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000BFBF00BF
        BF00BFBF00000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF00BF
        BF00BFBF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
        0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
    end
    object lblProcessConcreteOperationNo: TLabel
      Left = 8
      Top = 24
      Width = 54
      Height = 13
      Caption = #1057#1090#1088#1091#1082#1090'. No'
    end
    object edtProcessConcreteOperationName: TDBEdit
      Left = 128
      Top = 40
      Width = 315
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'PRC_CONCRETE_OP_NAME'
      DataSource = dsData
      TabOrder = 1
    end
    object edtProcessConcreteOperationShortName: TDBEdit
      Left = 128
      Top = 93
      Width = 315
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'PRC_CONCRETE_OP_SHORT_NAME'
      DataSource = dsData
      TabOrder = 2
    end
    object edtProcessConcreteOperationLocalNo: TDBEdit
      Left = 90
      Top = 40
      Width = 31
      Height = 21
      DataField = 'PRC_CONCRETE_OP_LOCAL_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object edtParentProcessConcreteOperationFullNo: TDBEdit
      Left = 8
      Top = 40
      Width = 81
      Height = 21
      TabStop = False
      BiDiMode = bdLeftToRight
      Color = clBtnFace
      DataField = 'PARENT_FULL_NO'
      DataSource = dsData
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 3
    end
    object tbDocButton: TToolBar
      Left = 450
      Top = 39
      Width = 39
      Height = 22
      Align = alNone
      ButtonWidth = 36
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmMain.ilDocs
      TabOrder = 4
      object btnDoc: TToolButton
        Left = 0
        Top = 0
        Action = actDoc
        ParentShowHint = False
        ShowHint = True
      end
    end
  end
  inline frProcessConcreteOperationProduct: TfrProductFieldEditFrame [2]
    Left = 8
    Top = 144
    Width = 499
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Anchors = [akLeft, akTop, akRight]
    Constraints.MaxHeight = 49
    TabOrder = 1
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 499
      Caption = ' '#1054#1073#1077#1082#1090#1080#1074#1080#1088#1072#1085' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090' '
      DesignSize = (
        499
        49)
      inherited pnlTreeNode: TPanel
        Width = 483
        inherited pnlTreeNodeName: TPanel
          Width = 301
          inherited edtTreeNodeName: TDBEdit
            Width = 300
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 301
        end
        inherited pnlRightButtons: TPanel
          Left = 424
        end
      end
    end
  end
  object grpDeactivation: TGroupBox [3]
    Left = 8
    Top = 200
    Width = 499
    Height = 49
    TabOrder = 2
    object lblDeactiveFrom: TLabel
      Left = 96
      Top = 21
      Width = 57
      Height = 13
      Caption = #1089#1095#1080#1090#1072#1085#1086' '#1086#1090' '
    end
    object chbIsInactive: TAbmesDBCheckBox
      Left = 12
      Top = 20
      Width = 85
      Height = 17
      Caption = #1053#1077#1072#1082#1090#1080#1074#1077#1085
      DataField = 'IS_INACTIVE'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      ImmediateUpdateField = True
    end
    inline frDeactivationDate: TfrDateFieldEditFrame
      Left = 159
      Top = 17
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 1
      TabStop = True
    end
  end
  inherited alActions: TActionList [4]
    inherited actForm: TAction
      Caption = 'ProcessConcreteOp'
    end
    object actCopyNameToShortName: TAction
      OnExecute = actCopyNameToShortNameExecute
      OnUpdate = actCopyNameToShortNameUpdate
    end
    object actDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  inherited dsData: TDataSource [5]
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcessConcreteOperation'
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    object cdsDataPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
      Required = True
    end
    object cdsDataPARENT_PRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_CONCRETE_OP_CODE'
    end
    object cdsDataPRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField
      DisplayLabel = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1053#1086#1084#1077#1088
      FieldName = 'PRC_CONCRETE_OP_LOCAL_NO'
      Required = True
    end
    object cdsDataPRC_CONCRETE_OP_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRC_CONCRETE_OP_NAME'
      Required = True
      Size = 100
    end
    object cdsDataPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRC_CONCRETE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
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
    object cdsDataDOC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_PRODUCT_CODE'
    end
    object cdsDataDEACTIVATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEACTIVATION_DATE'
    end
    object cdsDataIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      OnChange = cdsDataIS_INACTIVEChange
      FieldValueType = fvtBoolean
    end
  end
end
