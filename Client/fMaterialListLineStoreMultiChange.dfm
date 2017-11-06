inherited fmMaterialListLineStoreMultiChange: TfmMaterialListLineStoreMultiChange
  Caption = #1057#1084#1103#1085#1072' '#1085#1072' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
  ClientHeight = 188
  ClientWidth = 377
  PixelsPerInch = 96
  TextHeight = 13
  object btnCopyOldToNew: TSpeedButton [0]
    Left = 160
    Top = 67
    Width = 65
    Height = 21
    Action = actCopyOldToNew
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BF
      BF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF00BFBF00BF
      BF00BFBF00BFBF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF000000BFBF00BFBF00BFBF00BFBF00BFBF00BFBF00BFBF00000000FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000BFBF00BF
      BF00BFBF00000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF00BF
      BF00BFBF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
      0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
  end
  inherited pnlBottomButtons: TPanel
    Top = 153
    Width = 377
    inherited pnlOKCancel: TPanel
      Left = 109
    end
    inherited pnlClose: TPanel
      Left = 20
    end
    inherited pnlApply: TPanel
      Left = 288
      Visible = False
    end
  end
  inline frOldStore: TfrDeptFieldEditFrame [2]
    Left = 10
    Top = 8
    Width = 359
    Height = 48
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    inherited gbTreeNode: TGroupBox
      Width = 359
      Height = 48
      Caption = ' '#1057#1090#1072#1088#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
      inherited pnlTreeNode: TPanel
        Width = 343
        inherited pnlTreeNodeName: TPanel
          Width = 196
          inherited edtTreeNodeName: TDBEdit
            Width = 194
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 196
        end
        inherited pnlRightButtons: TPanel
          Left = 307
        end
      end
    end
  end
  inline frNewStore: TfrDeptFieldEditFrame [3]
    Left = 10
    Top = 96
    Width = 359
    Height = 48
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 2
    inherited gbTreeNode: TGroupBox
      Width = 359
      Height = 48
      Caption = ' '#1053#1086#1074#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
      inherited pnlTreeNode: TPanel
        Width = 343
        inherited pnlTreeNodeName: TPanel
          Width = 196
          inherited edtTreeNodeName: TDBEdit
            Width = 194
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 196
        end
        inherited pnlRightButtons: TPanel
          Left = 307
        end
      end
    end
  end
  inherited alActions: TActionList [4]
    object actCopyOldToNew: TAction
      Hint = #1050#1086#1087#1080#1088#1072' '#39#1089#1090#1072#1088#1086#39' '#1074' '#39#1085#1086#1074#1086#39
      OnExecute = actCopyOldToNewExecute
      OnUpdate = actCopyOldToNewUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 40
    Top = 72
  end
  inherited cdsData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'O_STORE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'N_STORE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    StoreDefs = True
    AfterOpen = cdsDataAfterOpen
    BeforePost = cdsDataBeforePost
    Left = 8
    Top = 72
    object cdsDataO_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1088#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'O_STORE_CODE'
      Required = True
    end
    object cdsDataN_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1086#1074#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'N_STORE_CODE'
      Required = True
    end
  end
end
