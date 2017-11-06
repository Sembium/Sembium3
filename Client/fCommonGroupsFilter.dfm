inherited fmCommonGroupsFilter: TfmCommonGroupsFilter
  ActiveControl = frProductParent.edtTreeNodeNo
  Caption = 
    #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080' '#1085#1072' %ProductClassAbbrev' +
    '%'
  ClientHeight = 220
  ClientWidth = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 185
    Width = 409
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 141
    end
    inherited pnlClose: TPanel
      Left = 52
    end
    inherited pnlApply: TPanel
      Left = 320
    end
  end
  inline frProductParent: TfrProductFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 393
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Anchors = [akLeft, akTop, akRight]
    Constraints.MaxHeight = 49
    TabOrder = 0
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 393
      Caption = ' '#1056#1086#1076' %ProductClassAbbrev% '
      inherited pnlTreeNode: TPanel
        Width = 377
        inherited pnlTreeNodeName: TPanel
          Width = 207
          inherited edtTreeNodeName: TDBEdit
            Width = 206
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 207
        end
        inherited pnlRightButtons: TPanel
          Left = 318
        end
      end
    end
  end
  object gbProcessPosition: TGroupBox [2]
    Left = 8
    Top = 64
    Width = 393
    Height = 113
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1087#1086#1079#1080#1094#1080#1103' '
    TabOrder = 1
    DesignSize = (
      393
      113)
    object lblIsUsedBy: TLabel
      Left = 8
      Top = 16
      Width = 96
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
      FocusControl = cbIsUsedBy
    end
    object lblIsProvidedBy: TLabel
      Left = 8
      Top = 64
      Width = 107
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089' '#1054#1073#1077#1079#1087#1077#1095#1080#1090#1077#1083
      FocusControl = cbIsProvidedBy
    end
    object cbIsUsedBy: TJvDBComboBox
      Left = 8
      Top = 32
      Width = 377
      Height = 21
      DataField = 'IS_USED_BY'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1055#1088#1086#1076#1072#1078#1073#1080' ('#1055#1088#1076')'
        #1042#1098#1090#1088#1077#1096#1085#1086' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1042#1054#1055#1088#1076')'
        #1042#1098#1090#1088#1077#1096#1085#1086' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1045#1083#1077#1084#1077#1085#1090#1080' '#1085#1072' '#1057#1088#1077#1076#1072' ('#1042#1054#1045#1083#1057')')
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbIsProvidedBy: TJvDBComboBox
      Left = 8
      Top = 80
      Width = 377
      Height = 21
      DataField = 'IS_PROVIDED_BY'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1044#1086#1089#1090#1072#1074#1082#1080' ('#1044#1089#1090')'
        #1042#1098#1090#1088#1077#1096#1085#1086' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1042#1054#1055#1088#1076')'
        #1042#1098#1090#1088#1077#1096#1085#1086' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1045#1083#1077#1084#1077#1085#1090#1080' '#1085#1072' '#1057#1088#1077#1076#1072' ('#1042#1054#1045#1083#1057')')
      TabOrder = 1
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inherited alActions: TActionList [3]
    Left = 448
    inherited actForm: TAction
      Caption = 
        #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080' '#1085#1072' %ProductClassAbbrev' +
        '%'
    end
  end
  inherited dsData: TDataSource [4]
    Left = 416
  end
  inherited cdsData: TAbmesClientDataSet [5]
    Left = 384
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [6]
    Left = 24
    Top = 256
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 88
    Top = 256
  end
  inherited dsFilterVariants: TDataSource
    Left = 56
    Top = 256
  end
end
