inherited fmImportSpecStagesAndOperations: TfmImportSpecStagesAndOperations
  Caption = #1048#1084#1087#1086#1088#1090' '#1085#1072' '#1077#1090#1072#1087#1077#1085' '#1080' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1077#1085' '#1088#1077#1076
  ClientHeight = 172
  ClientWidth = 561
  DesignSize = (
    561
    172)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 545
    Height = 121
  end
  object lblSpecModelVariant: TLabel [1]
    Left = 24
    Top = 80
    Width = 110
    Height = 13
    Caption = #1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083
    FocusControl = cbSpecModelVariant
  end
  inherited pnlBottomButtons: TPanel
    Top = 137
    Width = 561
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 293
    end
    inherited pnlClose: TPanel
      Left = 204
    end
    inherited pnlApply: TPanel
      Left = 472
      Visible = False
    end
  end
  inline frSpecProduct: TfrProductFieldEditFrame [3]
    Left = 24
    Top = 16
    Width = 513
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Anchors = [akLeft, akTop, akRight]
    Constraints.MaxHeight = 49
    TabOrder = 0
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
  object cbSpecModelVariant: TJvDBLookupCombo [4]
    Left = 24
    Top = 96
    Width = 513
    Height = 21
    DataField = '_SPEC_MODEL_VARIANT_IDENTIFIER'
    DataSource = dsData
    DisplayEmpty = ' '
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  inherited alActions: TActionList [5]
  end
  inherited dsData: TDataSource [6]
  end
end
