inherited fmChooseDelivery: TfmChooseDelivery
  Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1054#1044#1044
  ClientHeight = 116
  ClientWidth = 226
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 81
    Width = 226
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = -42
    end
    inherited pnlClose: TPanel
      Left = -131
    end
    inherited pnlApply: TPanel
      Left = 137
      Visible = False
    end
  end
  object gbDelivery: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 209
    Height = 65
    Caption = ' ID '#1054#1044#1044' '
    TabOrder = 0
    object lblDCDBranch: TLabel
      Left = 31
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblDCDCode: TLabel
      Left = 95
      Top = 16
      Width = 43
      Height = 13
      Caption = #1055#1044#1044' No'
    end
    object lblDeliveryProjectCode: TLabel
      Left = 151
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object edtDCDCode: TDBEdit
      Left = 96
      Top = 32
      Width = 49
      Height = 21
      DataField = 'DCD_CODE'
      DataSource = dsData
      TabOrder = 1
    end
    object edtDeliveryProjectCode: TDBEdit
      Left = 152
      Top = 32
      Width = 25
      Height = 21
      DataField = 'DELIVERY_PROJECT_CODE'
      DataSource = dsData
      TabOrder = 2
    end
    object cbDCDBranch: TJvDBLookupCombo
      Left = 32
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 200
      DeleteKeyClear = False
      DataField = 'DCD_BRANCH_CODE'
      DataSource = dsData
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_CODE_AND_NAME'
      LookupSource = dsBranches
      TabOrder = 0
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1054#1044#1044
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 65534
    Top = 56
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 30
    Top = 56
  end
end
