inherited fmOccupationProfessionsDept: TfmOccupationProfessionsDept
  Left = 363
  Top = 287
  Caption = #1058#1055' '#1054#1090' '#1055#1086#1083#1077#1074#1080#1103' '#1054#1073#1093#1074#1072#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' - %s'
  ClientHeight = 160
  ClientWidth = 385
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 125
    Width = 385
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 117
    end
    inherited pnlClose: TPanel
      Left = 28
    end
    inherited pnlApply: TPanel
      Left = 296
      Visible = False
    end
  end
  object gbPriority: TGroupBox [1]
    Left = 8
    Top = 64
    Width = 369
    Height = 49
    Caption = ' '#1056#1077#1078#1080#1084' '#1085#1072' '#1086#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077' '
    TabOrder = 1
    DesignSize = (
      369
      49)
    object cbPriority: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 353
      Height = 21
      DeleteKeyClear = False
      DataField = 'OCC_WORK_DEPT_PRIORITY_CODE'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      LookupField = 'OCC_WORK_DEPT_PRIORITY_CODE'
      LookupDisplay = 'OWD_PRIORITY_DISPLAY_NAME'
      LookupSource = dsDeptOccWorkDeptPriorities
      TabOrder = 0
    end
  end
  inline frDept: TfrDeptFieldEditFrame [2]
    Left = 8
    Top = 8
    Width = 369
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    inherited gbTreeNode: TGroupBox
      Width = 369
      inherited pnlTreeNode: TPanel
        Width = 353
        inherited pnlTreeNodeName: TPanel
          Width = 206
          inherited edtTreeNodeName: TDBEdit
            Width = 205
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 206
        end
        inherited pnlRightButtons: TPanel
          Left = 317
        end
      end
    end
  end
  inherited alActions: TActionList [3]
    Left = 128
    Top = 64
    inherited actForm: TAction
      Caption = #1058#1055' '#1054#1090' '#1055#1086#1083#1077#1074#1080#1103' '#1054#1073#1093#1074#1072#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' - %s'
    end
  end
  inherited dsData: TDataSource [4]
    OnDataChange = dsDataDataChange
    Left = 40
    Top = 64
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 8
    Top = 64
  end
  object cdsDeptOccWorkDeptPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Filtered = True
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptOccWorkDeptPriorities'
    BeforeOpen = cdsDeptOccWorkDeptPrioritiesBeforeOpen
    OnFilterRecord = cdsDeptOccWorkDeptPrioritiesFilterRecord
    Left = 288
    Top = 80
    object cdsDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      Required = True
    end
    object cdsDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
      Required = True
    end
    object cdsDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
      Required = True
      Size = 50
    end
    object cdsDeptOccWorkDeptPrioritiesOWD_PRIORITY_DISPLAY_NAME: TAbmesWideStringField
      FieldName = 'OWD_PRIORITY_DISPLAY_NAME'
      Size = 93
    end
    object cdsDeptOccWorkDeptPrioritiesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
    end
    object cdsDeptOccWorkDeptPrioritiesIS_CAPACITY_GENERATOR: TAbmesFloatField
      FieldName = 'IS_CAPACITY_GENERATOR'
      Required = True
    end
  end
  object dsDeptOccWorkDeptPriorities: TDataSource
    DataSet = cdsDeptOccWorkDeptPriorities
    Left = 320
    Top = 80
  end
end
