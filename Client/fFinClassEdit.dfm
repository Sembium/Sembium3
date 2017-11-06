inherited fmFinClassEdit: TfmFinClassEdit
  ClientHeight = 180
  ClientWidth = 505
  ExplicitWidth = 511
  ExplicitHeight = 205
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 145
    Width = 505
    ExplicitTop = 145
    ExplicitWidth = 505
    inherited pnlOKCancel: TPanel
      Left = 237
      ExplicitLeft = 237
    end
    inherited pnlClose: TPanel
      Left = 148
      ExplicitLeft = 148
    end
    inherited pnlApply: TPanel
      Left = 416
      Visible = False
      ExplicitLeft = 416
    end
  end
  object gbFinClass: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 489
    Height = 129
    Caption = ' gbFinClass '
    TabOrder = 1
    object lblFinClassNo: TLabel
      Left = 8
      Top = 24
      Width = 54
      Height = 13
      Caption = #1057#1090#1088#1091#1082#1090'. No'
    end
    object lblName: TLabel
      Left = 128
      Top = 24
      Width = 112
      Height = 13
      Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object btnNameToShortName: TSpeedButton
      Left = 267
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
    object lblShortName: TLabel
      Left = 128
      Top = 77
      Width = 115
      Height = 13
      Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object edtParentFinClassFullNo: TDBEdit
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
    object edtFinClassLocalNo: TDBEdit
      Left = 90
      Top = 40
      Width = 31
      Height = 21
      DataField = 'FIN_CLASS_LOCAL_NO'
      DataSource = dsData
      TabOrder = 1
    end
    object edtFinClassName: TDBEdit
      Left = 128
      Top = 40
      Width = 305
      Height = 21
      DataField = 'NAME'
      DataSource = dsData
      TabOrder = 2
    end
    object edtFinClassShortName: TDBEdit
      Left = 128
      Top = 93
      Width = 305
      Height = 21
      DataField = 'SHORT_NAME'
      DataSource = dsData
      TabOrder = 4
    end
    object tbDocButton: TToolBar
      Left = 442
      Top = 39
      Width = 39
      Height = 22
      Align = alNone
      ButtonWidth = 36
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmMain.ilDocs
      TabOrder = 3
      object btnDoc: TToolButton
        Left = 0
        Top = 0
        Action = actDoc
        ParentShowHint = False
        ShowHint = True
      end
    end
  end
  inherited alActions: TActionList
    object actCopyNameToShortName: TAction
      Hint = #1050#1086#1087#1080#1088#1072' '#1055#1098#1083#1085#1086#1090#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074' '#1050#1088#1072#1090#1082#1086#1090#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      OnExecute = actCopyNameToShortNameExecute
      OnUpdate = actCopyNameToShortNameUpdate
    end
    object actDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1057#1090#1072#1090#1080#1103
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvFinClass'
    ConnectionBroker = dmMain.conFinance
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    object cdsDataFIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'FIN_CLASS_CODE'
    end
    object cdsDataPARENT_FIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'PARENT_FIN_CLASS_CODE'
    end
    object cdsDataFIN_CLASS_LOCAL_NO: TAbmesFloatField
      DisplayLabel = #1057#1090#1088#1091#1082#1090'. No'
      FieldName = 'FIN_CLASS_LOCAL_NO'
      Required = True
    end
    object cdsDataNAME: TAbmesWideStringField
      DisplayLabel = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object cdsDataSHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      FieldValueType = fvtBoolean
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
    object cdsDataPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
  end
end
