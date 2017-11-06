inherited fmVendorProductSignature: TfmVendorProductSignature
  Left = 331
  Top = 239
  Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088' - %s'
  ClientHeight = 224
  ClientWidth = 495
  ExplicitWidth = 501
  ExplicitHeight = 249
  DesignSize = (
    495
    224)
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 479
    Height = 173
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    ExplicitHeight = 188
  end
  object lblProductSignature: TLabel [1]
    Left = 24
    Top = 128
    Width = 121
    Height = 13
    Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088
  end
  inherited pnlBottomButtons: TPanel
    Top = 189
    Width = 495
    TabOrder = 2
    ExplicitTop = 189
    ExplicitWidth = 495
    inherited pnlOKCancel: TPanel
      Left = 227
      ExplicitLeft = 227
    end
    inherited pnlClose: TPanel
      Left = 138
      ExplicitLeft = 138
    end
    inherited pnlApply: TPanel
      Left = 406
      Visible = False
      ExplicitLeft = 406
    end
  end
  object edtProductSignature: TDBEdit [3]
    Left = 24
    Top = 144
    Width = 449
    Height = 21
    DataField = 'NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inline frProduct: TfrProductFieldEditFrame [4]
    Left = 24
    Top = 72
    Width = 449
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 24
    ExplicitTop = 72
    ExplicitWidth = 449
    inherited gbTreeNode: TGroupBox
      Width = 449
      ExplicitWidth = 449
      DesignSize = (
        449
        49)
      inherited pnlTreeNode: TPanel
        Width = 433
        ExplicitWidth = 433
        inherited pnlTreeNodeName: TPanel
          Width = 263
          ExplicitWidth = 263
          DesignSize = (
            263
            22)
          inherited edtTreeNodeName: TDBEdit
            Width = 262
            ExplicitWidth = 262
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 263
          ExplicitLeft = 263
        end
        inherited pnlRightButtons: TPanel
          Left = 374
          ExplicitLeft = 374
        end
      end
    end
  end
  inline frCompany: TfrPartnerFieldEditFrame [5]
    Left = 24
    Top = 16
    Width = 449
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 3
    TabStop = True
    ExplicitLeft = 24
    ExplicitTop = 16
    ExplicitWidth = 449
    inherited gbPartner: TGroupBox
      Width = 449
      ExplicitWidth = 449
      inherited pnlNameAndButtons: TPanel
        Width = 360
        ExplicitWidth = 360
        inherited pnlRightButtons: TPanel
          Left = 324
          ExplicitLeft = 324
          inherited tlbDocButton: TToolBar
            Height = 32
            ExplicitHeight = 32
          end
        end
        inherited pnlPartnerName: TPanel
          Width = 324
          ExplicitWidth = 324
          DesignSize = (
            324
            32)
          inherited edtPartnerName: TDBEdit
            Width = 325
            ExplicitWidth = 325
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 325
            ExplicitWidth = 325
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 441
        ExplicitLeft = 441
      end
    end
  end
  inherited alActions: TActionList [6]
    Left = 80
    Top = 160
    inherited actForm: TAction
      Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088' - %s'
    end
  end
  inherited dsData: TDataSource [7]
    Left = 48
    Top = 160
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 160
  end
end
