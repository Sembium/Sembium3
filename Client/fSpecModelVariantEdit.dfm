inherited fmSpecModelVariantEdit: TfmSpecModelVariantEdit
  Left = 418
  Top = 361
  ActiveControl = frMainDept.edtTreeNodeNo
  Caption = #1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083' - %s'
  ClientHeight = 276
  ClientWidth = 353
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 337
    Height = 225
  end
  inherited pnlBottomButtons: TPanel
    Top = 241
    Width = 353
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 85
    end
    inherited pnlClose: TPanel
      Left = -4
    end
    inherited pnlApply: TPanel
      Left = 264
      Visible = False
    end
  end
  object gbQuantity: TGroupBox [2]
    Left = 16
    Top = 72
    Width = 321
    Height = 65
    Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1087#1072#1088#1090#1080#1076#1072' '
    TabOrder = 1
    object lblMinQuantity: TLabel
      Left = 8
      Top = 16
      Width = 13
      Height = 13
      Caption = #1054#1090
      FocusControl = edtMinQuantity
    end
    object lblMaxQuantity: TLabel
      Left = 164
      Top = 16
      Width = 15
      Height = 13
      Caption = #1044#1086
      FocusControl = edtMaxQuantity
    end
    object edtMinQuantity: TDBEdit
      Left = 8
      Top = 32
      Width = 149
      Height = 21
      DataField = 'MIN_TECH_QUANTITY'
      DataSource = dsData
      TabOrder = 0
    end
    object edtMaxQuantity: TDBEdit
      Left = 164
      Top = 32
      Width = 149
      Height = 21
      DataField = 'MAX_TECH_QUANTITY'
      DataSource = dsData
      TabOrder = 1
    end
  end
  inline frMainDept: TfrDeptFieldEditFrame [3]
    Left = 16
    Top = 16
    Width = 321
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    inherited gbTreeNode: TGroupBox
      Width = 321
      Caption = ' '#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '
      inherited pnlTreeNode: TPanel
        Width = 305
        inherited pnlTreeNodeName: TPanel
          Width = 158
          inherited edtTreeNodeName: TDBEdit
            Width = 157
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 158
        end
        inherited pnlRightButtons: TPanel
          Left = 269
        end
      end
    end
  end
  object gbNotes: TGroupBox [4]
    Left = 16
    Top = 143
    Width = 321
    Height = 50
    Caption = ' '#1041#1077#1083#1077#1078#1082#1080' '
    TabOrder = 2
    object edtNotes: TDBEdit
      Left = 8
      Top = 20
      Width = 305
      Height = 21
      DataField = 'NOTES'
      DataSource = dsData
      TabOrder = 0
    end
  end
  object chbIsInactive: TDBCheckBox [5]
    Left = 16
    Top = 204
    Width = 73
    Height = 17
    Caption = #1053#1077#1072#1082#1090#1080#1074#1077#1085
    DataField = 'IS_INACTIVE'
    DataSource = dsData
    TabOrder = 3
  end
  inherited alActions: TActionList [6]
    inherited actForm: TAction
      Caption = #1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083' - %s'
    end
  end
end
