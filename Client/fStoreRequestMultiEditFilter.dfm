inherited fmStoreRequestMultiEditFilter: TfmStoreRequestMultiEditFilter
  Left = 361
  Top = 157
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1080' %s '#1085#1072' %ProductClassAbbrev% '#1079#1072' '#1079#1072#1103#1074#1103#1074#1072#1085#1077
  ClientHeight = 244
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 209
    Width = 793
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 525
    end
    inherited pnlClose: TPanel
      Left = 436
    end
    inherited pnlApply: TPanel
      Left = 704
    end
  end
  inline frProduct: TfrProductFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 609
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 609
      inherited pnlTreeNode: TPanel
        Width = 593
        inherited pnlTreeNodeName: TPanel
          Width = 423
          inherited edtTreeNodeName: TDBEdit
            Width = 422
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 423
        end
        inherited pnlRightButtons: TPanel
          Left = 534
        end
      end
    end
  end
  inline frStore: TfrDeptFieldEditFrame [2]
    Left = 8
    Top = 64
    Width = 385
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 2
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 385
      Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
      inherited pnlTreeNode: TPanel
        Width = 369
        inherited pnlTreeNodeName: TPanel
          Width = 222
          inherited edtTreeNodeName: TDBEdit
            Width = 221
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 222
        end
        inherited pnlRightButtons: TPanel
          Left = 333
        end
      end
    end
  end
  inline frDept: TfrDeptFieldEditFrame [3]
    Left = 400
    Top = 64
    Width = 385
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 3
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 385
      inherited pnlTreeNode: TPanel
        Width = 369
        inherited pnlTreeNodeName: TPanel
          Width = 222
          inherited edtTreeNodeName: TDBEdit
            Width = 221
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 222
        end
        inherited pnlRightButtons: TPanel
          Left = 333
        end
      end
    end
  end
  object gbPlanPeriod: TGroupBox [4]
    Left = 624
    Top = 8
    Width = 161
    Height = 49
    Caption = ' '#1055#1083#1072#1085#1086#1074' '#1074#1088#1077#1084#1077#1074#1080' '#1080#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 1
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
  end
  inline frBndProcess: TfrStoreDealBindingFilter [5]
    Left = 8
    Top = 120
    Width = 777
    Height = 81
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TabStop = True
  end
  inherited alActions: TActionList [6]
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1080' %s '#1085#1072' %ProductClassAbbrev% '#1079#1072' '#1079#1072#1103#1074#1103#1074#1072#1085#1077
    end
  end
  inherited dsData: TDataSource [7]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 224
  end
  inherited dsFilterVariants: TDataSource
    Top = 224
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 224
  end
end
