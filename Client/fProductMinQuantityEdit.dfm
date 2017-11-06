inherited fmProductMinQuantityEdit: TfmProductMinQuantityEdit
  Left = 421
  Top = 283
  Caption = #1047#1072#1076#1077#1083' - %s'
  ClientHeight = 156
  ClientWidth = 425
  DesignSize = (
    425
    156)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 409
    Height = 105
    ExplicitWidth = 409
    ExplicitHeight = 105
  end
  object lblMinQuantity: TLabel [1]
    Left = 176
    Top = 64
    Width = 72
    Height = 13
    Caption = #1056#1072#1073'. '#1084#1080#1085'. '#1082'-'#1074#1086
  end
  object dbtMeasureAbbrev: TDBText [2]
    Left = 260
    Top = 85
    Width = 26
    Height = 15
    DataField = '_MEASURE_ABBREV'
    DataSource = dsData
  end
  object lblAccountMinQuantity: TLabel [3]
    Left = 296
    Top = 64
    Width = 76
    Height = 13
    Caption = #1057#1095#1077#1090'. '#1084#1080#1085'. '#1082'-'#1074#1086
  end
  object dbtAccountMeasureAbbrev: TDBText [4]
    Left = 380
    Top = 85
    Width = 26
    Height = 15
    DataField = '_ACCOUNT_MEASURE_ABBREV'
    DataSource = dsData
  end
  object lblDatePeriod: TLabel [5]
    Left = 16
    Top = 64
    Width = 110
    Height = 13
    Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1072#1082#1090#1080#1074#1085#1086#1089#1090
  end
  object pnlProduct: TPanel [6]
    Left = 16
    Top = 16
    Width = 393
    Height = 49
    BevelOuter = bvNone
    TabOrder = 1
    object lblProducts: TLabel
      Left = 0
      Top = 0
      Width = 22
      Height = 13
      Caption = #1059#1054#1073
    end
    inline frProduct: TfrProductFieldEditFrameBald
      Left = 0
      Top = 16
      Width = 393
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      ExplicitTop = 16
      ExplicitWidth = 393
      inherited gbTreeNode: TGroupBox
        Width = 409
        inherited pnlTreeNode: TPanel
          Width = 393
          inherited pnlTreeNodeName: TPanel
            Width = 223
            inherited edtTreeNodeName: TDBEdit
              Width = 222
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 223
            inherited pnlEditButtons: TPanel
              inherited btnInvokeTreeEditor: TSpeedButton
                Glyph.Data = {00000000}
              end
              inherited btnClearFieldValues: TSpeedButton
                Glyph.Data = {00000000}
              end
            end
          end
          inherited pnlRightButtons: TPanel
            Left = 334
            inherited btnProductVIM: TSpeedButton
              Glyph.Data = {00000000}
            end
          end
        end
      end
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 121
    Width = 425
    TabOrder = 5
    ExplicitTop = 121
    ExplicitWidth = 425
    inherited pnlOKCancel: TPanel
      Left = 157
      ExplicitLeft = 157
    end
    inherited pnlClose: TPanel
      Left = 68
      ExplicitLeft = 68
    end
    inherited pnlApply: TPanel
      Left = 336
      Visible = False
      ExplicitLeft = 336
    end
    object tlbDocs: TToolBar
      Left = 8
      Top = 3
      Width = 36
      Height = 22
      Align = alNone
      Anchors = [akTop, akRight]
      AutoSize = True
      ButtonWidth = 36
      EdgeInner = esNone
      Images = dmMain.ilDocs
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1047#1072#1076#1077#1083#1072
        ImageIndex = 1
        OnClick = btnDocsClick
      end
    end
  end
  object edtMinQuantity: TDBEdit [8]
    Left = 176
    Top = 80
    Width = 81
    Height = 21
    DataField = 'MIN_QUANTITY'
    DataSource = dsData
    TabOrder = 3
  end
  inline frDateInterval: TfrDateIntervalFrame [9]
    Left = 16
    Top = 80
    Width = 145
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 145
    Constraints.MinHeight = 21
    Constraints.MinWidth = 145
    TabOrder = 2
    TabStop = True
    ExplicitLeft = 16
    ExplicitTop = 80
  end
  object edtAccountMinQuantity: TDBEdit [10]
    Left = 296
    Top = 80
    Width = 81
    Height = 21
    DataField = 'ACCOUNT_MIN_QUANTITY'
    DataSource = dsData
    TabOrder = 4
  end
  object pnlStore: TPanel [11]
    Left = 16
    Top = 16
    Width = 393
    Height = 49
    BevelOuter = bvNone
    TabOrder = 0
    object lblTreeNodeName: TLabel
      Left = 0
      Top = 0
      Width = 91
      Height = 13
      Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
    end
    inline frStore: TfrDeptFieldEditFrameBald
      Left = 0
      Top = 16
      Width = 393
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      ExplicitTop = 16
      ExplicitWidth = 393
      DesignSize = (
        393
        22)
      inherited gbTreeNode: TGroupBox
        Width = 409
        ExplicitWidth = 409
        inherited pnlTreeNode: TPanel
          Width = 393
          ExplicitWidth = 393
          inherited pnlTreeNodeName: TPanel
            Width = 246
            ExplicitWidth = 246
            inherited edtTreeNodeName: TDBEdit
              Width = 245
              ExplicitWidth = 244
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 246
            ExplicitLeft = 246
            inherited pnlEditButtons: TPanel
              inherited btnInvokeTreeEditor: TSpeedButton
                Glyph.Data = {00000000}
              end
              inherited btnClearFieldValues: TSpeedButton
                Glyph.Data = {00000000}
              end
            end
          end
          inherited pnlRightButtons: TPanel
            Left = 357
            ExplicitLeft = 357
          end
        end
      end
    end
  end
  inherited alActions: TActionList [12]
    Left = 176
    inherited actForm: TAction
      Caption = #1047#1072#1076#1077#1083' - %s'
    end
  end
  inherited dsData: TDataSource [14]
    Left = 128
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 96
  end
end
