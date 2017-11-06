inherited fmProductDeptOptionEdit: TfmProductDeptOptionEdit
  Left = 312
  Top = 204
  Caption = #1058#1055' '#1050#1086#1085#1090#1077#1082#1089#1090' - %s'
  ClientHeight = 173
  ClientWidth = 402
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 386
    Height = 122
  end
  object lblIsPsdPriceFromDelivery: TLabel [1]
    Left = 24
    Top = 80
    Width = 155
    Height = 13
    Caption = #1053#1072#1095#1080#1085' '#1085#1072' '#1087#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077' '#1085#1072' '#1059#1054#1073
  end
  inherited pnlBottomButtons: TPanel
    Top = 138
    Width = 402
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 134
    end
    inherited pnlClose: TPanel
      Left = 45
    end
    inherited pnlApply: TPanel
      Left = 313
      Visible = False
    end
  end
  inline frDept: TfrDeptFieldEditFrame [3]
    Left = 16
    Top = 16
    Width = 369
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    inherited gbTreeNode: TGroupBox
      Width = 369
      inherited pnlTreeNode: TPanel
        Width = 353
        inherited pnlTreeNodeName: TPanel
          Width = 206
          inherited edtTreeNodeName: TDBEdit
            Width = 205
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 206
        end
        inherited pnlRightButtons: TPanel
          Left = 317
        end
      end
    end
  end
  object pnlToggleIsPsdPriceFromDelivery: TPanel [4]
    Left = 24
    Top = 96
    Width = 153
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    TabOrder = 1
    object pnlOverriddenIsPsdPriceFromDelivery: TPanel
      Left = 11
      Top = 0
      Width = 142
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        142
        21)
      object cbIsPsdPriceFromDelivery: TJvDBComboBox
        Left = 0
        Top = 0
        Width = 142
        Height = 21
        DataField = 'IS_PSD_PRICE_FROM_DELIVERY'
        DataSource = dsData
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        Items.Strings = (
          #1057#1098#1079#1076#1072#1074#1072#1085#1077
          #1044#1086#1089#1090#1072#1074#1082#1072)
        TabOrder = 0
        Values.Strings = (
          'False'
          'True')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object pnlInheritedIsPsdPriceFromDelivery: TPanel
      Left = 153
      Top = 0
      Width = 142
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        142
        21)
      object cbInheritedIsPSDPriceFromDelivery: TJvDBComboBox
        Left = 0
        Top = 0
        Width = 142
        Height = 21
        Enabled = False
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 0
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object pnlToggleIsPsdPriceFromDeliveryButton: TPanel
      Left = 0
      Top = 0
      Width = 11
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object btnToggleIsPsdPriceFromDelivery: TSpeedButton
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Action = actToggleIsPSDPriceFromDelivery
        Align = alLeft
        AllowAllUp = True
        GroupIndex = 2
        Flat = True
      end
    end
  end
  inherited alActions: TActionList [5]
    Left = 320
    inherited actForm: TAction
      Caption = #1058#1055' '#1050#1086#1085#1090#1077#1082#1089#1090' - %s'
    end
    object actToggleIsPSDPriceFromDelivery: TAction
      GroupIndex = 2
      ImageIndex = 140
      OnExecute = actToggleIsPSDPriceFromDeliveryExecute
      OnUpdate = actToggleIsPSDPriceFromDeliveryUpdate
    end
  end
  inherited dsData: TDataSource [6]
  end
end
