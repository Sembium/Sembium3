inherited fmCurrentDept: TfmCurrentDept
  Left = 252
  Top = 224
  ActiveControl = frCurrentDept.edtTreeNodeNo
  Caption = #1058#1077#1082#1091#1097#1086' '#1058#1055
  ClientHeight = 100
  ClientWidth = 442
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 442
    ExplicitTop = 65
    ExplicitWidth = 442
    inherited pnlOKCancel: TPanel
      Left = 174
      ExplicitLeft = 174
    end
    inherited pnlClose: TPanel
      Left = 85
      ExplicitLeft = 85
    end
    inherited pnlApply: TPanel
      Left = 353
      Visible = False
      ExplicitLeft = 353
    end
  end
  inline frCurrentDept: TfrDeptFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 425
    Height = 48
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 425
    ExplicitHeight = 48
    inherited gbTreeNode: TGroupBox
      Width = 425
      Height = 48
      ExplicitWidth = 425
      ExplicitHeight = 48
      inherited pnlTreeNode: TPanel
        Width = 409
        ExplicitWidth = 409
        inherited pnlTreeNodeName: TPanel
          Width = 262
          ExplicitWidth = 262
          inherited edtTreeNodeName: TDBEdit
            Width = 261
            ExplicitWidth = 261
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 262
          ExplicitLeft = 262
        end
        inherited pnlRightButtons: TPanel
          Left = 373
          ExplicitLeft = 373
        end
      end
    end
  end
  inherited alActions: TActionList [2]
    Top = 64
    inherited actForm: TAction
      Caption = #1058#1077#1082#1091#1097#1086' '#1058#1055
    end
  end
  inherited dsData: TDataSource [4]
    Top = 64
  end
  inherited cdsData: TAbmesClientDataSet
    ProviderName = 'prvCurrentDept'
    ConnectionBroker = dmMain.conCompany
    Top = 64
    object cdsDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataCURRENT_DEPT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_DEPT_CODE'
    end
    object cdsDataCURRENT_DEPT_NAME: TAbmesWideStringField
      FieldName = 'CURRENT_DEPT_NAME'
      Size = 100
    end
    object cdsDataCURRENT_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CURRENT_DEPT_IDENTIFIER'
      Size = 46
    end
  end
end
