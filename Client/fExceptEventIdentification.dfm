inherited frExceptEventIdentification: TfrExceptEventIdentification
  Width = 721
  Height = 64
  object gbExceptEventIdentification: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 721
    Height = 64
    Align = alClient
    Caption = ' ID '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
    TabOrder = 0
    object lblState: TLabel
      Left = 8
      Top = 16
      Width = 36
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object lblExceptEventNo: TLabel
      Left = 64
      Top = 16
      Width = 13
      Height = 13
      Caption = 'No'
    end
    object lblExceptEventCreateDate: TLabel
      Left = 128
      Top = 16
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object lblExceptEventCreateTime: TLabel
      Left = 240
      Top = 16
      Width = 18
      Height = 13
      Caption = #1063#1072#1089
    end
    object lblExceptEventType: TLabel
      Left = 288
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
    end
    object lblLevel: TLabel
      Left = 632
      Top = 16
      Width = 38
      Height = 13
      Caption = #1054#1073#1093#1074#1072#1090
    end
    object lblCauese: TLabel
      Left = 496
      Top = 16
      Width = 43
      Height = 13
      Caption = #1055#1088#1080#1095#1080#1085#1080
    end
    object lblConsequences: TLabel
      Left = 560
      Top = 16
      Width = 55
      Height = 13
      Caption = #1057#1083#1077#1076#1089#1090#1074#1080#1103
    end
    object edtState: TDBEdit
      Left = 8
      Top = 32
      Width = 49
      Height = 21
      Color = clBtnFace
      DataField = 'STATE_CODE'
      DataSource = dsExceptEvent
      ReadOnly = True
      TabOrder = 0
    end
    object edtExceptEventNo: TDBEdit
      Left = 64
      Top = 32
      Width = 57
      Height = 21
      Color = clBtnFace
      DataField = 'EXCEPT_EVENT_NO'
      DataSource = dsExceptEvent
      ReadOnly = True
      TabOrder = 1
    end
    inline frExceptEventCreateDate: TfrDateFieldEditFrame
      Left = 128
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 2
      TabStop = True
      inherited dsData: TDataSource
        DataSet = cdsExceptEvent
      end
    end
    inline frExceptEventCreateTime: TfrTimeFieldEditFrame
      Left = 240
      Top = 32
      Width = 49
      Height = 21
      TabOrder = 3
      TabStop = True
      inherited edtTime: TDBDateTimeEditEh
        EditFormat = 'HH:NN'
      end
      inherited dsData: TDataSource
        DataSet = cdsExceptEvent
      end
    end
    object edtLevel: TDBEdit
      Left = 632
      Top = 32
      Width = 82
      Height = 21
      Color = clBtnFace
      DataField = '_EXCEPT_EVENT_LEVEL_NAME'
      DataSource = dsExceptEvent
      ReadOnly = True
      TabOrder = 7
    end
    object edtCauses: TDBEdit
      Left = 496
      Top = 32
      Width = 57
      Height = 20
      Color = clBtnFace
      DataField = 'HAS_CAUSES'
      DataSource = dsExceptEvent
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Wingdings 3'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object edtConsequences: TDBEdit
      Left = 560
      Top = 32
      Width = 57
      Height = 20
      Color = clBtnFace
      DataField = 'HAS_CONSEQUENCES'
      DataSource = dsExceptEvent
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Wingdings 3'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    inline frExceptEventType: TfrExceptEventTypeFieldEditFrameBald
      Left = 288
      Top = 32
      Width = 201
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 4
      inherited gbTreeNode: TGroupBox
        Width = 217
        inherited pnlTreeNode: TPanel
          Width = 201
          inherited pnlTreeNodeName: TPanel
            Width = 54
            inherited edtTreeNodeName: TDBEdit
              Width = 53
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 54
          end
          inherited pnlRightButtons: TPanel
            Left = 165
          end
        end
      end
      inherited dsData: TDataSource
        DataSet = cdsExceptEvent
      end
    end
  end
  inherited dsData: TDataSource
    Left = 72
  end
  object cdsExceptEvent: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvExceptEvent'
    ReadOnly = True
    ConnectionBroker = dmMain.conExceptEvents
    BeforeOpen = cdsExceptEventBeforeOpen
    Left = 176
    Top = 8
    object cdsExceptEventSTATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'STATE_CODE'
      OnGetText = cdsExceptEventSTATE_CODEGetText
    end
    object cdsExceptEventEXCEPT_EVENT_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_NO'
    end
    object cdsExceptEventEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_CODE'
    end
    object cdsExceptEventCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsExceptEventCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsExceptEventEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_CODE'
    end
    object cdsExceptEvent_EXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EXCEPT_EVENT_LEVEL_NAME'
      LookupDataSet = cdsExceptEventLevels
      LookupKeyFields = 'EXCEPT_EVENT_LEVEL_CODE'
      LookupResultField = 'EXCEPT_EVENT_LEVEL_NAME'
      KeyFields = 'EXCEPT_EVENT_LEVEL_CODE'
      Size = 50
      Lookup = True
    end
    object cdsExceptEventHAS_CAUSES: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_CAUSES'
      DisplayBoolValues = 't;'
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventHAS_CONSEQUENCES: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_CONSEQUENCES'
      DisplayBoolValues = 'u;'
      FieldValueType = fvtBoolean
    end
  end
  object dsExceptEvent: TDataSource
    DataSet = cdsExceptEvent
    Left = 208
    Top = 8
  end
  object cdsExceptEventLevels: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvExceptEventLevels'
    ReadOnly = True
    ConnectionBroker = dmMain.conExceptEvents
    Left = 680
    Top = 8
    object cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_CODE'
    end
    object cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_NO'
    end
    object cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_LEVEL_NAME'
      Size = 50
    end
    object cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_LEVEL_ABBREV'
      Size = 100
    end
  end
end
