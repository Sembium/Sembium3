inherited fmProcessKnowlEdit: TfmProcessKnowlEdit
  ActiveControl = edtProcessKnowlName
  Caption = 'ProcessKnowl'
  ClientHeight = 564
  ClientWidth = 858
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 529
    Width = 858
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 590
    end
    inherited pnlClose: TPanel
      Left = 501
    end
    inherited pnlApply: TPanel
      Left = 769
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Top = 138
    Width = 858
    Height = 391
    TabOrder = 1
    inherited pnlGrid: TPanel
      Width = 842
      Height = 375
      inherited pnlNavigator: TPanel
        Width = 842
        object lblProcessKnowlBaseOpsCaption: TLabel [0]
          Left = 621
          Top = 8
          Width = 212
          Height = 13
          Caption = #1055#1088#1080#1089#1098#1097#1080' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1090#1086#1088#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 842
        Height = 351
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = '_PRC_BASE_OP_FULL_NO'
            Footers = <>
            Title.Caption = #1057#1090#1088#1091#1082#1090'. No'
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = '_PRC_BASE_OP_NAME'
            Footers = <>
            Title.Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 582
          end
          item
            EditButtons = <>
            FieldName = '_PRC_BASE_OP_SHORT_NAME'
            Footers = <>
            Title.Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 133
          end>
      end
    end
  end
  object pnlTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 858
    Height = 138
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object gbProcessKnowl: TGroupBox
      Left = 8
      Top = 8
      Width = 841
      Height = 130
      Caption = 'ID ProcessKnowl'
      TabOrder = 0
      DesignSize = (
        841
        130)
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
        Left = 411
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
      object lblProcessKnowlNo: TLabel
        Left = 8
        Top = 24
        Width = 54
        Height = 13
        Caption = #1057#1090#1088#1091#1082#1090'. No'
      end
      object edtProcessKnowlName: TDBEdit
        Left = 128
        Top = 40
        Width = 657
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'PRC_KNOWL_NAME'
        DataSource = dsData
        TabOrder = 2
      end
      object edtProcessKnowlShortName: TDBEdit
        Left = 128
        Top = 93
        Width = 657
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'PRC_KNOWL_SHORT_NAME'
        DataSource = dsData
        TabOrder = 3
      end
      object edtProcessKnowlLocalNo: TDBEdit
        Left = 90
        Top = 40
        Width = 31
        Height = 21
        DataField = 'PRC_KNOWL_LOCAL_NO'
        DataSource = dsData
        TabOrder = 1
      end
      object edtParentProcessKnowlFullNo: TDBEdit
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
        TabOrder = 0
      end
      object tbDocButton: TToolBar
        Left = 794
        Top = 39
        Width = 39
        Height = 22
        Align = alNone
        Anchors = [akTop, akRight]
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
  end
  inherited cdsGridData: TAbmesClientDataSet
    DataSetField = cdsDataqryProcessKnowlDetail
    FieldDefs = <
      item
        Name = 'PRC_KNOWL_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRC_BASE_OP_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRC_BASE_OP_FORMATTED_FULL_NO'
        DataType = ftWideString
        Size = 250
      end>
    object cdsGridDataPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
      Required = True
    end
    object cdsGridDataPRC_BASE_OP_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1090#1086#1088
      FieldName = 'PRC_BASE_OP_CODE'
      Required = True
      OnChange = cdsGridDataPRC_BASE_OP_CODEChange
    end
    object cdsGridDataPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_FORMATTED_FULL_NO'
      Size = 250
    end
    object cdsGridData_PRC_BASE_OP_FULL_NO: TAbmesWideStringField
      DisplayLabel = #1089#1090#1088'. '#1085#1086#1084#1077#1088
      FieldKind = fkLookup
      FieldName = '_PRC_BASE_OP_FULL_NO'
      LookupDataSet = cdsProcessBaseOperations
      LookupKeyFields = 'PRC_BASE_OP_CODE'
      LookupResultField = 'PRC_BASE_OP_FULL_NO'
      KeyFields = 'PRC_BASE_OP_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_PRC_BASE_OP_SHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1082#1088#1072#1090#1082#1086' '#1085#1072#1080#1084'.'
      FieldKind = fkLookup
      FieldName = '_PRC_BASE_OP_SHORT_NAME'
      LookupDataSet = cdsProcessBaseOperations
      LookupKeyFields = 'PRC_BASE_OP_CODE'
      LookupResultField = 'PRC_BASE_OP_SHORT_NAME'
      KeyFields = 'PRC_BASE_OP_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_PRC_BASE_OP_NAME: TAbmesWideStringField
      DisplayLabel = #1087#1098#1083#1085#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldKind = fkLookup
      FieldName = '_PRC_BASE_OP_NAME'
      LookupDataSet = cdsProcessBaseOperations
      LookupKeyFields = 'PRC_BASE_OP_CODE'
      LookupResultField = 'PRC_BASE_OP_NAME'
      KeyFields = 'PRC_BASE_OP_CODE'
      Size = 100
      Lookup = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'ProcessKnowl'
    end
    object actCopyNameToShortName: TAction
      OnExecute = actCopyNameToShortNameExecute
      OnUpdate = actCopyNameToShortNameUpdate
    end
    object actDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1055#1086#1079#1085#1072#1085#1080#1077' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcessKnowl'
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    object cdsDataPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDataPARENT_PRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_KNOWL_CODE'
    end
    object cdsDataPRC_KNOWL_LOCAL_NO: TAbmesFloatField
      DisplayLabel = #1057#1090#1088#1091#1082#1090'. No'
      FieldName = 'PRC_KNOWL_LOCAL_NO'
      Required = True
    end
    object cdsDataPRC_KNOWL_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRC_KNOWL_NAME'
      Required = True
      Size = 100
    end
    object cdsDataPRC_KNOWL_SHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRC_KNOWL_SHORT_NAME'
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
      ProviderFlags = []
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
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataqryProcessKnowlDetail: TDataSetField
      FieldName = 'qryProcessKnowlDetail'
    end
  end
  object cdsProcessBaseOperations: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <>
    ProviderName = 'prvProcessBaseOperations'
    Left = 344
    Top = 125
    object cdsProcessBaseOperationsPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcessBaseOperationsPRC_BASE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_LOCAL_NO'
      Required = True
    end
    object cdsProcessBaseOperationsPRC_BASE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessBaseOperationsPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessBaseOperationsPRC_BASE_OP_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessBaseOperationsPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
  end
end
