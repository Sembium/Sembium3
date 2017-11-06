inherited fmExceptEventTypeEdit: TfmExceptEventTypeEdit
  Caption = 'ExceptEventType'
  ClientHeight = 180
  ClientWidth = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 145
    Width = 546
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 278
    end
    inherited pnlClose: TPanel
      Left = 189
    end
    inherited pnlApply: TPanel
      Left = 457
      Visible = False
    end
  end
  object gbExceptEventType: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 529
    Height = 130
    Caption = 'ID ExceptEventType '
    TabOrder = 0
    DesignSize = (
      529
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
    object lblExceptEventTypeNo: TLabel
      Left = 8
      Top = 24
      Width = 54
      Height = 13
      Caption = #1057#1090#1088#1091#1082#1090'. No'
    end
    object edtExceptEventTypeName: TDBEdit
      Left = 128
      Top = 40
      Width = 345
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'EXCEPT_EVENT_TYPE_NAME'
      DataSource = dsData
      TabOrder = 2
    end
    object edtExceptEventTypeShortName: TDBEdit
      Left = 128
      Top = 93
      Width = 345
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'EXCEPT_EVENT_TYPE_SHORT_NAME'
      DataSource = dsData
      TabOrder = 4
    end
    object edtExceptEventTypeLocalNo: TDBEdit
      Left = 90
      Top = 40
      Width = 31
      Height = 21
      DataField = 'EXCEPT_EVENT_TYPE_LOCAL_NO'
      DataSource = dsData
      TabOrder = 1
    end
    object edtParentExceptEventTypeFullNo: TDBEdit
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
      Left = 482
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
    inherited actForm: TAction
      Caption = 'ExceptEventType'
    end
    object actCopyNameToShortName: TAction
      OnExecute = actCopyNameToShortNameExecute
      OnUpdate = actCopyNameToShortNameUpdate
    end
    object actDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1042#1080#1076' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conExceptEvents
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvExceptEventType'
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    object cdsDataEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_CODE'
      Required = True
    end
    object cdsDataPARENT_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PARENT_EXCEPT_EVENT_TYPE_CODE'
    end
    object cdsDataEXCEPT_EVENT_TYPE_LOCAL_NO: TAbmesFloatField
      DisplayLabel = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1053#1086#1084#1077#1088
      FieldName = 'EXCEPT_EVENT_TYPE_LOCAL_NO'
      Required = True
    end
    object cdsDataEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'EXCEPT_EVENT_TYPE_NAME'
      Required = True
      Size = 100
    end
    object cdsDataEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'EXCEPT_EVENT_TYPE_SHORT_NAME'
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
  end
end
