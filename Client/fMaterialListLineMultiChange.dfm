inherited fmMaterialListLineMultiChange: TfmMaterialListLineMultiChange
  Left = 201
  Top = 292
  Caption = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1086' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077' '#1079#1072' '#1047#1072#1084#1103#1085#1072
  ClientHeight = 268
  ClientWidth = 784
  PixelsPerInch = 96
  TextHeight = 13
  object btnCopyOldToNew: TSpeedButton [0]
    Left = 304
    Top = 107
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
    Top = 233
    Width = 784
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 516
    end
    inherited pnlClose: TPanel
      Left = 427
    end
    inherited pnlApply: TPanel
      Left = 695
      Visible = False
    end
  end
  object grpOld: TGroupBox [2]
    Left = 16
    Top = 16
    Width = 753
    Height = 89
    Caption = ' '#1057#1090#1072#1088#1086' '
    TabOrder = 0
    inline frOldStore: TfrDeptFieldEditFrame
      Left = 403
      Top = 24
      Width = 334
      Height = 48
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 1
      inherited gbTreeNode: TGroupBox
        Width = 334
        Height = 48
        Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
        inherited pnlTreeNode: TPanel
          Width = 318
          inherited pnlTreeNodeName: TPanel
            Width = 192
            inherited edtTreeNodeName: TDBEdit
              Width = 191
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 192
            Width = 90
            inherited edtTreeNodeNo: TJvDBComboEdit
              Width = 90
            end
          end
          inherited pnlRightButtons: TPanel
            Left = 282
          end
        end
      end
    end
    inline frOldProduct: TfrProductFieldEditFrame
      Left = 16
      Top = 24
      Width = 369
      Height = 49
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 0
      inherited gbTreeNode: TGroupBox
        Width = 369
        Caption = ' '#1053#1057#1063' '
        inherited pnlTreeNode: TPanel
          Width = 353
          inherited pnlTreeNodeName: TPanel
            Width = 183
            inherited edtTreeNodeName: TDBEdit
              Width = 182
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 183
          end
          inherited pnlRightButtons: TPanel
            Left = 294
          end
        end
      end
    end
  end
  object grpNew: TGroupBox [3]
    Left = 16
    Top = 128
    Width = 753
    Height = 89
    Caption = ' '#1053#1086#1074#1086' '
    TabOrder = 1
    inline frNewStore: TfrDeptFieldEditFrame
      Left = 403
      Top = 24
      Width = 334
      Height = 48
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 1
      inherited gbTreeNode: TGroupBox
        Width = 334
        Height = 48
        Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
        inherited pnlTreeNode: TPanel
          Width = 318
          inherited pnlTreeNodeName: TPanel
            Width = 192
            inherited edtTreeNodeName: TDBEdit
              Width = 191
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 192
            Width = 90
            inherited edtTreeNodeNo: TJvDBComboEdit
              Width = 90
            end
          end
          inherited pnlRightButtons: TPanel
            Left = 282
          end
        end
      end
    end
    inline frNewProduct: TfrProductFieldEditFrame
      Left = 16
      Top = 24
      Width = 369
      Height = 49
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 0
      inherited gbTreeNode: TGroupBox
        Width = 369
        Caption = ' '#1053#1057#1063' '
        inherited pnlTreeNode: TPanel
          Width = 353
          inherited pnlTreeNodeName: TPanel
            Width = 183
            inherited edtTreeNodeName: TDBEdit
              Width = 182
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 183
          end
          inherited pnlRightButtons: TPanel
            Left = 294
          end
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 280
    inherited actForm: TAction
      Caption = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1086' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077' '#1079#1072' '#1047#1072#1084#1103#1085#1072
    end
    object actCopyOldToNew: TAction
      Hint = #1050#1086#1087#1080#1088#1072' '#39#1089#1090#1072#1088#1086#39' '#1074' '#39#1085#1086#1074#1086#39
      OnExecute = actCopyOldToNewExecute
      OnUpdate = actCopyOldToNewUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'O_STORE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'O_PRODUCT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'O_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'O_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'N_STORE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'N_PRODUCT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'N_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'N_PRODUCT_NO'
        DataType = ftFloat
      end>
    StoreDefs = True
    AfterOpen = cdsDataAfterOpen
    BeforePost = cdsDataBeforePost
    object cdsDataO_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1088#1086' '#1053#1057#1063
      FieldName = 'O_PRODUCT_CODE'
      Required = True
      OnChange = cdsDataO_PRODUCT_CODEChange
    end
    object cdsDataO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'O_PRODUCT_NAME'
      Size = 100
    end
    object cdsDataO_PRODUCT_NO: TAbmesFloatField
      FieldName = 'O_PRODUCT_NO'
    end
    object cdsDataO_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1088#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'O_STORE_CODE'
      Required = True
    end
    object cdsDataN_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1086#1074#1086' '#1053#1057#1063
      FieldName = 'N_PRODUCT_CODE'
      Required = True
      OnChange = cdsDataN_PRODUCT_CODEChange
    end
    object cdsDataN_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'N_PRODUCT_NAME'
      Size = 100
    end
    object cdsDataN_PRODUCT_NO: TAbmesFloatField
      FieldName = 'N_PRODUCT_NO'
    end
    object cdsDataN_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1086#1074#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'N_STORE_CODE'
      Required = True
    end
  end
end
