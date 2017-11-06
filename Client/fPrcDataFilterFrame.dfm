inherited frPrcDataFilterFrame: TfrPrcDataFilterFrame
  Width = 861
  Height = 114
  Constraints.MaxHeight = 114
  Constraints.MaxWidth = 861
  Constraints.MinHeight = 114
  Constraints.MinWidth = 861
  object imgMain: TImage [0]
    Left = 0
    Top = 0
    Width = 861
    Height = 114
    Transparent = True
  end
  object lblProcessBaseAction: TLabel [1]
    Left = 524
    Top = 8
    Width = 145
    Height = 13
    Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103' ('#1055#1060')'
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object lblProcessConcreteAction: TLabel [2]
    Left = 692
    Top = 64
    Width = 145
    Height = 13
    Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103' ('#1055#1060')'
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object lblProcessConcreteOperation: TLabel [3]
    Left = 524
    Top = 64
    Width = 157
    Height = 13
    Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090' ('#1055#1054#1085#1090')'
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object lblProcessBaseOperation: TLabel [4]
    Left = 348
    Top = 32
    Width = 157
    Height = 13
    Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1055#1054#1087')'
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object lblProcessKnowl: TLabel [5]
    Left = 180
    Top = 32
    Width = 127
    Height = 13
    Caption = #1055#1086#1079#1085#1072#1085#1080#1077' '#1079#1072' '#1059#1044#1057' ('#1055#1059#1044#1057')'
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object lblProcessFunc: TLabel [6]
    Left = 12
    Top = 32
    Width = 124
    Height = 13
    Caption = #1060#1091#1085#1082#1094#1080#1103' '#1079#1072' '#1059#1044#1057' ('#1060#1059#1044#1057')'
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object btnChoosePrcData: TBitBtn [7]
    Left = 692
    Top = 22
    Width = 153
    Height = 25
    Action = actChoosePrcData
    Caption = #1042#1048#1055#1057'...'
    TabOrder = 4
  end
  inline frProcessBaseAction: TfrProcessActionFieldEditFrameBald [8]
    Left = 524
    Top = 24
    Width = 153
    Height = 22
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 3
    inherited gbEnumItem: TGroupBox
      Width = 185
      inherited edtEnumItemName: TDBEdit
        Width = 121
      end
      inherited cbEnumItemName: TJvDBLookupCombo
        Width = 121
      end
    end
  end
  inline frProcessConcreteAction: TfrProcessActionFieldEditFrameBald [9]
    Left = 692
    Top = 80
    Width = 153
    Height = 22
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 6
    inherited gbEnumItem: TGroupBox
      Width = 185
      inherited edtEnumItemName: TDBEdit
        Width = 121
      end
      inherited cbEnumItemName: TJvDBLookupCombo
        Width = 121
      end
    end
  end
  inline frProcessFunction: TfrProcessFunctionFieldEditFrameBald
    Left = 12
    Top = 48
    Width = 153
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    inherited gbTreeNode: TGroupBox
      Width = 169
      inherited pnlTreeNode: TPanel
        Width = 153
        inherited pnlTreeNodeName: TPanel
          Width = 6
          inherited edtTreeNodeName: TDBEdit
            Width = 5
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 6
        end
        inherited pnlRightButtons: TPanel
          Left = 117
        end
      end
    end
  end
  inline frProcessKnowl: TfrProcessKnowlFieldEditFrameBald
    Left = 180
    Top = 48
    Width = 153
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    inherited gbTreeNode: TGroupBox
      Width = 169
      inherited pnlTreeNode: TPanel
        Width = 153
        inherited pnlTreeNodeName: TPanel
          Width = 6
          inherited edtTreeNodeName: TDBEdit
            Width = 5
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 6
        end
        inherited pnlRightButtons: TPanel
          Left = 117
        end
      end
    end
  end
  inline frProcessBaseOperation: TfrProcessBaseOperationFieldEditFrameBald
    Left = 348
    Top = 48
    Width = 153
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 2
    inherited gbTreeNode: TGroupBox
      Width = 169
      inherited pnlTreeNode: TPanel
        Width = 153
        inherited pnlTreeNodeName: TPanel
          Width = 6
          inherited edtTreeNodeName: TDBEdit
            Width = 5
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 6
        end
        inherited pnlRightButtons: TPanel
          Left = 117
        end
      end
    end
  end
  inline frProcessConcreteOperation: TfrProcessConcreteOperationFieldEditFrameBald
    Left = 525
    Top = 80
    Width = 152
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 5
    inherited gbTreeNode: TGroupBox
      Width = 168
      inherited pnlTreeNode: TPanel
        Width = 152
        inherited pnlTreeNodeName: TPanel
          Width = 5
          inherited edtTreeNodeName: TDBEdit
            Width = 4
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 5
        end
        inherited pnlRightButtons: TPanel
          Left = 116
        end
      end
    end
  end
  inherited alActions: TActionList
    object actChoosePrcData: TAction
      Caption = #1042#1048#1055#1057'...'
      Hint = #1042#1086#1083#1077#1074#1086' '#1080' '#1048#1076#1077#1081#1085#1086' '#1055#1088#1086#1089#1090#1088#1072#1085#1089#1090#1074#1086' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072' ('#1042#1048#1055#1057')'
      OnExecute = actChoosePrcDataExecute
    end
  end
  inherited dsData: TDataSource
    Left = 60
  end
  object cdsChosenPrcData: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 828
    object cdsChosenPrcDataPRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PRC_FUNC_CODE'
    end
    object cdsChosenPrcDataPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
    end
    object cdsChosenPrcDataPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
    end
    object cdsChosenPrcDataPRC_BASE_ACTION_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_ACTION_CODE'
    end
  end
end
