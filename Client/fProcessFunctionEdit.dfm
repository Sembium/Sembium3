inherited fmProcessFunctionEdit: TfmProcessFunctionEdit
  ActiveControl = edtProcessFunctionName
  BorderStyle = bsSingle
  Caption = 'ProcessFunction'
  ClientHeight = 661
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 1017
    Height = 138
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1017
      138)
    object gbProcessFunction: TGroupBox
      Left = 8
      Top = 8
      Width = 1001
      Height = 130
      Anchors = [akLeft, akTop, akRight]
      Caption = 'ID ProcessFunction'
      TabOrder = 0
      DesignSize = (
        1001
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
        Left = 441
        Top = 65
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
      object lblProcessFunctionNo: TLabel
        Left = 8
        Top = 24
        Width = 54
        Height = 13
        Caption = #1057#1090#1088#1091#1082#1090'. No'
      end
      object edtProcessFunctionName: TDBEdit
        Left = 128
        Top = 40
        Width = 817
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'PRC_FUNC_NAME'
        DataSource = dsData
        TabOrder = 2
      end
      object edtProcessFunctionShortName: TDBEdit
        Left = 128
        Top = 93
        Width = 817
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'PRC_FUNC_SHORT_NAME'
        DataSource = dsData
        TabOrder = 3
      end
      object edtProcessFunctionLocalNo: TDBEdit
        Left = 90
        Top = 40
        Width = 31
        Height = 21
        DataField = 'PRC_FUNC_LOCAL_NO'
        DataSource = dsData
        TabOrder = 1
      end
      object edtParentProcessFunctionFullNo: TDBEdit
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
        Left = 953
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
  inherited pnlBottomButtons: TPanel
    Top = 626
    Width = 1017
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 749
    end
    inherited pnlClose: TPanel
      Left = 660
    end
    inherited pnlApply: TPanel
      Left = 928
      Visible = False
    end
  end
  object pnlPrcData: TPanel [2]
    Left = 0
    Top = 138
    Width = 1017
    Height = 488
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object pcPrcData: TPageControl
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 1001
      Height = 472
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      ActivePage = tsPrcData
      Align = alClient
      TabOrder = 0
      object tsPrcData: TTabSheet
        Caption = #1060#1091#1085#1082#1094#1080#1086#1085#1072#1083#1077#1085' '#1076#1103#1083' '#1086#1090' '#1042#1048#1055#1057
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'ProcessFunction'
    end
    object actCopyNameToShortName: TAction
      OnExecute = actCopyNameToShortNameExecute
      OnUpdate = actCopyNameToShortNameUpdate
    end
    object actDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1060#1091#1085#1082#1094#1080#1103' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077
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
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
        Size = 2
      end>
    ProviderName = 'prvProcessFunction'
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    object cdsDataPRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PRC_FUNC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDataPARENT_PRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_FUNC_CODE'
    end
    object cdsDataPRC_FUNC_LOCAL_NO: TAbmesFloatField
      DisplayLabel = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1053#1086#1084#1077#1088
      FieldName = 'PRC_FUNC_LOCAL_NO'
      Required = True
    end
    object cdsDataPRC_FUNC_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRC_FUNC_NAME'
      Required = True
      Size = 100
    end
    object cdsDataPRC_FUNC_SHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRC_FUNC_SHORT_NAME'
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
    object cdsDataPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      BlobType = ftOraBlob
      Size = 1
    end
  end
end
