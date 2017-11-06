inherited fmSpecificationCreateLikeFilter: TfmSpecificationCreateLikeFilter
  Left = 294
  Top = 210
  Caption = #1053#1086#1074' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083
  ClientHeight = 173
  ClientWidth = 465
  ExplicitWidth = 471
  ExplicitHeight = 198
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 449
    Height = 122
    ExplicitWidth = 449
    ExplicitHeight = 122
  end
  inherited pnlBottomButtons: TPanel
    Top = 138
    Width = 465
    TabOrder = 2
    ExplicitTop = 138
    ExplicitWidth = 465
    inherited pnlOKCancel: TPanel
      Left = 197
      ExplicitLeft = 197
    end
    inherited pnlClose: TPanel
      Left = 108
      ExplicitLeft = 108
    end
    inherited pnlApply: TPanel
      Left = 376
      ExplicitLeft = 376
    end
  end
  inline frOriginalProduct: TfrProductFieldEditFrame [2]
    Left = 16
    Top = 16
    Width = 433
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 16
    ExplicitTop = 16
    ExplicitWidth = 433
    inherited gbTreeNode: TGroupBox
      Width = 433
      Caption = ' '#1050#1072#1090#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
      ExplicitWidth = 369
      inherited pnlTreeNode: TPanel
        Width = 417
        ExplicitWidth = 353
        inherited pnlTreeNodeName: TPanel
          Width = 247
          ExplicitWidth = 183
          inherited edtTreeNodeName: TDBEdit
            Width = 246
            ExplicitWidth = 182
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 247
          ExplicitLeft = 183
        end
        inherited pnlRightButtons: TPanel
          Left = 358
          ExplicitLeft = 294
        end
      end
    end
  end
  inline frNewProduct: TfrProductFieldEditFrame [3]
    Left = 16
    Top = 72
    Width = 433
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 16
    ExplicitTop = 72
    ExplicitWidth = 433
    inherited gbTreeNode: TGroupBox
      Width = 433
      Caption = ' '#1053#1086#1074' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
      ExplicitWidth = 433
      inherited pnlTreeNode: TPanel
        Width = 417
        ExplicitWidth = 417
        inherited pnlTreeNodeName: TPanel
          Width = 247
          ExplicitWidth = 247
          inherited edtTreeNodeName: TDBEdit
            Width = 246
            ExplicitWidth = 246
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 247
          ExplicitLeft = 247
        end
        inherited pnlRightButtons: TPanel
          Left = 358
          ExplicitLeft = 358
        end
      end
    end
  end
  inherited alActions: TActionList [4]
    Left = 0
    Top = 128
    inherited actForm: TAction
      Caption = #1053#1086#1074' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083
    end
  end
  inherited dsData: TDataSource [6]
  end
  inherited cdsData: TAbmesClientDataSet [7]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [8]
  end
end
