inherited fmSpecDetail: TfmSpecDetail
  Left = 246
  Top = 244
  Caption = #1056#1077#1076' '#1086#1090' '#1052#1054#1044#1045#1083' - %s'
  ClientHeight = 212
  ClientWidth = 658
  DesignSize = (
    658
    212)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 642
    Height = 161
  end
  object lblNoAsText: TLabel [1]
    Left = 24
    Top = 18
    Width = 92
    Height = 13
    Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
    FocusControl = edtNoAsText
  end
  object lblDetailTechQuantity: TLabel [2]
    Left = 24
    Top = 120
    Width = 73
    Height = 13
    Caption = #1057#1090#1088'. '#1090#1077#1093#1085'. '#1082'-'#1074#1086
    FocusControl = edtDetailTechQuantity
  end
  object lblTotalDetailTechQuantity: TLabel [3]
    Left = 144
    Top = 120
    Width = 81
    Height = 13
    Caption = #1054#1073#1097#1086' '#1090#1077#1093#1085'. '#1082'-'#1074#1086
    FocusControl = edtTotalDetailTechQuantity
  end
  object txtDetailTechMeasure: TDBText [4]
    Left = 228
    Top = 139
    Width = 37
    Height = 17
    DataField = '_DETAIL_TECH_MEASURE_ABBREV'
    DataSource = dsData
  end
  object lblNotes: TLabel [5]
    Left = 272
    Top = 120
    Width = 43
    Height = 13
    Caption = #1041#1077#1083#1077#1078#1082#1080
    FocusControl = edtNotes
  end
  object lblConstructionNotes: TLabel [6]
    Left = 456
    Top = 120
    Width = 114
    Height = 13
    Caption = #1041#1077#1083#1077#1078#1082#1080' '#1087#1086' '#1074#1084#1098#1082#1074#1072#1085#1077
    FocusControl = edtConstructionNotes
  end
  inherited pnlBottomButtons: TPanel
    Top = 177
    Width = 658
    TabOrder = 9
    inherited pnlOKCancel: TPanel
      Left = 390
      TabOrder = 3
    end
    inherited pnlClose: TPanel
      Left = 301
      TabOrder = 2
    end
    inherited pnlApply: TPanel
      Left = 569
      TabOrder = 4
      Visible = False
    end
    object pnlAnnulButton: TPanel
      Left = 0
      Top = 0
      Width = 113
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnAnnul: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actAnnul
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF000000000000000000FFFF
          FF0000FFFF00FFFFFF0000FFFF0000000000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF000000000000FFFF00FFFFFF0000FF
          FF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00000000000000000000000000000000000000000000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF000000
          0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
          0000000000000000000000FFFF00FFFFFF000000000000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000FFFF00000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000FF00FF00000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlAnnuled: TPanel
      Left = 113
      Top = 0
      Width = 81
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      Visible = False
      object chbAnnuled: TCheckBox
        Left = 8
        Top = 8
        Width = 70
        Height = 17
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
  end
  object edtNoAsText: TDBEdit [8]
    Left = 24
    Top = 32
    Width = 185
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'NO_AS_TEXT'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
  end
  object edtDetailTechQuantity: TJvDBCalcEdit [9]
    Left = 24
    Top = 136
    Width = 113
    Height = 21
    DecimalPlaces = 10
    DisplayFormat = ',0.##########'
    TabOrder = 5
    DecimalPlacesAlwaysShown = False
    DataField = 'DETAIL_TECH_QUANTITY'
    DataSource = dsData
  end
  object edtTotalDetailTechQuantity: TDBEdit [10]
    Left = 144
    Top = 136
    Width = 81
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'TOTAL_DETAIL_TECH_QUANTITY'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 6
  end
  object edtNotes: TDBEdit [11]
    Left = 272
    Top = 136
    Width = 175
    Height = 21
    DataField = 'NOTES'
    DataSource = dsData
    TabOrder = 7
  end
  object pnlStructChange: TPanel [12]
    Left = 384
    Top = 10
    Width = 249
    Height = 49
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      249
      49)
    object bvlStructChange: TBevel
      Left = 0
      Top = 16
      Width = 249
      Height = 33
      Anchors = [akLeft, akTop, akRight]
      Shape = bsFrame
    end
    object lblStructChangeDate: TLabel
      Left = 8
      Top = 26
      Width = 23
      Height = 13
      Caption = #1076#1072#1090#1072
      FocusControl = edtStructChangeDate
    end
    object lblStructChangeHour: TLabel
      Left = 154
      Top = 26
      Width = 17
      Height = 13
      Caption = #1095#1072#1089
    end
    object pnlStructChangeComboBox: TPanel
      Left = 8
      Top = 8
      Width = 86
      Height = 22
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        86
        22)
      object chbStructChange: TAbmesDBCheckBox
        Left = 4
        Top = 0
        Width = 79
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077
        DataField = 'IS_STRUCT_CHANGED'
        DataSource = dsData
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
    end
    object edtStructChangeDate: TDBEdit
      Left = 176
      Top = 23
      Width = 65
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'STRUCT_CHANGE_TIME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
    inline frStructChangeDate: TfrDateFieldEditFrame
      Left = 40
      Top = 23
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
    end
  end
  object chbIsForSingleUse: TAbmesDBCheckBox [13]
    Left = 544
    Top = 82
    Width = 91
    Height = 17
    Caption = #1041#1077#1079' '#1074#1088#1098#1097#1072#1085#1077
    DataField = 'IS_FOR_SINGLE_USE'
    DataSource = dsData
    TabOrder = 4
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object edtConstructionNotes: TDBEdit [14]
    Left = 456
    Top = 136
    Width = 177
    Height = 21
    DataField = 'CONSTRUCTION_NOTES'
    DataSource = dsData
    TabOrder = 8
  end
  inline frDetail: TfrProductFieldEditFrame [15]
    Left = 24
    Top = 64
    Width = 513
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 3
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 513
      Caption = ' '#1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090' '
      DesignSize = (
        513
        49)
      inherited pnlTreeNode: TPanel
        Width = 497
        inherited pnlTreeNodeName: TPanel
          Width = 315
          DesignSize = (
            315
            22)
          inherited edtTreeNodeName: TDBEdit
            Width = 314
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 315
        end
        inherited pnlRightButtons: TPanel
          Left = 438
        end
      end
    end
  end
  object chbIsComplete: TAbmesDBCheckBox [16]
    Left = 224
    Top = 32
    Width = 145
    Height = 17
    Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1086' '#1089#1098#1075#1083#1072#1089#1091#1074#1072#1085
    DataField = 'IS_COMPLETE'
    DataSource = dsData
    TabOrder = 1
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  inherited alActions: TActionList [17]
    Left = 192
    Top = 8
    inherited actForm: TAction
      Caption = #1056#1077#1076' '#1086#1090' '#1052#1054#1044#1045#1083' - %s'
    end
    object actAnnul: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 16
      OnExecute = actAnnulExecute
    end
  end
  inherited dsData: TDataSource [18]
  end
end
