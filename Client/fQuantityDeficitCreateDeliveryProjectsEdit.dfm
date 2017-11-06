inherited fmQuantityDeficitCreateDeliveryProjectsEdit: TfmQuantityDeficitCreateDeliveryProjectsEdit
  Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1079#1072' '#1054#1044#1044' '#1082#1098#1084' '#1055#1044#1044' '#1057#1091#1073#1077#1082#1090#1086#1074
  ClientHeight = 164
  ClientWidth = 850
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 834
    Height = 113
  end
  object lblQuantityDeficit: TLabel [1]
    Left = 136
    Top = 72
    Width = 93
    Height = 13
    Caption = #1057#1091#1084#1072#1088#1077#1085' '#1044#1077#1092#1080#1094#1080#1090
  end
  object lblMinQuantity: TLabel [2]
    Left = 240
    Top = 72
    Width = 67
    Height = 13
    Caption = #1047#1072#1076#1077#1083' '#1074' '#1082#1088#1072#1081
  end
  object lblQuantity: TLabel [3]
    Left = 320
    Top = 72
    Width = 89
    Height = 13
    Caption = #1057#1091#1084#1072#1088#1085#1072' '#1055#1083'. '#1053#1083#1095'.'
  end
  object lblDeliveryProjectQuantity: TLabel [4]
    Left = 416
    Top = 72
    Width = 66
    Height = 13
    Caption = #1050'-'#1074#1086' '#1079#1072' '#1054#1044#1044
  end
  object lblSinglePrice: TLabel [5]
    Left = 528
    Top = 72
    Width = 43
    Height = 13
    Caption = #1045#1076'. '#1094#1077#1085#1072
  end
  object lblCurrency: TLabel [6]
    Left = 592
    Top = 72
    Width = 35
    Height = 13
    Caption = #1042#1072#1083#1091#1090#1072
  end
  object lblTotalPrice: TLabel [7]
    Left = 656
    Top = 72
    Width = 56
    Height = 13
    Caption = #1054#1073#1097#1072' '#1094#1077#1085#1072
  end
  object lblTransportBy: TLabel [8]
    Left = 736
    Top = 72
    Width = 79
    Height = 13
    Caption = #1054#1088#1075'. '#1058#1088#1072#1085#1089#1087#1086#1088#1090
  end
  object lblDeliveryDate: TLabel [9]
    Left = 24
    Top = 72
    Width = 104
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
  end
  object dbtMeasure: TDBText [10]
    Left = 490
    Top = 92
    Width = 23
    Height = 17
    DataSource = dsData
  end
  inline frProduct: TfrProductFieldEditFrame [11]
    Left = 24
    Top = 16
    Width = 385
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    inherited gbTreeNode: TGroupBox
      Width = 385
      inherited pnlTreeNode: TPanel
        Width = 369
        inherited pnlTreeNodeName: TPanel
          Width = 187
          inherited edtTreeNodeName: TDBEdit
            Width = 186
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 187
        end
        inherited pnlRightButtons: TPanel
          Left = 310
        end
      end
    end
  end
  inline frStore: TfrDeptFieldEditFrame [12]
    Left = 416
    Top = 16
    Width = 409
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    inherited gbTreeNode: TGroupBox
      Width = 409
      Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
      inherited pnlTreeNode: TPanel
        Width = 393
        inherited pnlTreeNodeName: TPanel
          Width = 246
          inherited edtTreeNodeName: TDBEdit
            Width = 245
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 246
        end
        inherited pnlRightButtons: TPanel
          Left = 357
        end
      end
    end
  end
  inherited pnlBottomButtons: TPanel [13]
    Top = 129
    Width = 850
    TabOrder = 11
    inherited pnlOKCancel: TPanel
      Left = 582
    end
    inherited pnlClose: TPanel
      Left = 493
    end
    inherited pnlApply: TPanel
      Left = 761
      Visible = False
    end
  end
  object edtQuantityDeficit: TDBEdit [14]
    Left = 136
    Top = 88
    Width = 97
    Height = 21
    Color = clBtnFace
    DataSource = dsData
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object edtMinQuantity: TDBEdit [15]
    Left = 240
    Top = 88
    Width = 73
    Height = 21
    Color = clBtnFace
    DataSource = dsData
    ReadOnly = True
    TabOrder = 4
  end
  object edtQuantity: TDBEdit [16]
    Left = 320
    Top = 88
    Width = 89
    Height = 21
    Color = clBtnFace
    DataSource = dsData
    ReadOnly = True
    TabOrder = 5
  end
  object edtDeliveryProjectQuantity: TDBEdit [17]
    Left = 416
    Top = 88
    Width = 73
    Height = 21
    DataSource = dsData
    TabOrder = 6
  end
  object edtSinglePrice: TDBEdit [18]
    Left = 528
    Top = 88
    Width = 57
    Height = 21
    DataSource = dsData
    TabOrder = 7
  end
  object cbCurrency: TJvDBLookupCombo [19]
    Left = 592
    Top = 88
    Width = 57
    Height = 21
    DataField = '_CURRENCY_ABBREV'
    DataSource = dsData
    TabOrder = 8
  end
  object edtTotalPrice: TDBEdit [20]
    Left = 656
    Top = 88
    Width = 73
    Height = 21
    Color = clBtnFace
    DataField = '_TOTAL_PRICE'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 9
  end
  object cbTransportBy: TJvDBComboBox [21]
    Left = 736
    Top = 88
    Width = 89
    Height = 21
    DataField = 'IS_TRANSPORT_FROM_VENDOR'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      ''
      #1048#1055
      #1044#1086#1089#1090#1072#1074#1095#1080#1082)
    TabOrder = 10
    Values.Strings = (
      ''
      'True'
      'False')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  inline frDeliveryDate: TfrDateFieldEditFrame [22]
    Left = 24
    Top = 88
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 2
  end
  object pnlAcquirePriceButton: TPanel
    Left = 517
    Top = 88
    Width = 11
    Height = 21
    BevelOuter = bvNone
    TabOrder = 12
    object btnAcquirePrice: TSpeedButton
      Left = 0
      Top = 0
      Width = 11
      Height = 21
      Action = actAcquirePrice
      Align = alLeft
      AllowAllUp = True
      Flat = True
      ParentShowHint = False
      ShowHint = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1079#1072' '#1054#1044#1044' '#1082#1098#1084' '#1055#1044#1044' '#1057#1091#1073#1077#1082#1090#1086#1074
    end
    object actAcquirePrice: TAction
      Hint = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072
      ImageIndex = 187
      OnExecute = actAcquirePriceExecute
      OnUpdate = actAcquirePriceUpdate
    end
  end
end
