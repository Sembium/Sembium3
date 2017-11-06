inherited fmStoreDealsFilter: TfmStoreDealsFilter
  Left = 266
  Top = 239
  Caption = 
    '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' %ProductClas' +
    'sAbbrev%'
  ClientHeight = 500
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 465
    Width = 793
    TabOrder = 9
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
  object gbMovementType: TGroupBox [1]
    Left = 8
    Top = 304
    Width = 161
    Height = 65
    Caption = ' '#1042#1080#1076' '
    TabOrder = 5
    object chkIn: TAbmesDBCheckBox
      Left = 16
      Top = 24
      Width = 97
      Height = 17
      Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
      DataField = 'IS_IN'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkOut: TAbmesDBCheckBox
      Left = 16
      Top = 40
      Width = 65
      Height = 17
      Caption = #1058#1077#1075#1083#1077#1085#1077
      DataField = 'IS_OUT'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbFlags: TGroupBox [2]
    Left = 184
    Top = 304
    Width = 209
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 6
    object chkNotStorno: TAbmesDBCheckBox
      Left = 16
      Top = 40
      Width = 83
      Height = 17
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1080
      DataField = 'IS_STORNO'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkStorno: TAbmesDBCheckBox
      Left = 16
      Top = 24
      Width = 97
      Height = 17
      Caption = #1053#1077#1072#1085#1091#1083#1080#1088#1072#1085#1080
      DataField = 'IS_NOT_STORNO'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbStoreRequest: TGroupBox [3]
    Left = 408
    Top = 304
    Width = 377
    Height = 65
    Caption = ' ID '#1043#1088#1091#1087#1086#1074#1072' '#1079#1072#1103#1074#1082#1072' '
    TabOrder = 7
    object lblStoreRequestNo: TLabel
      Left = 151
      Top = 17
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
    end
    object lblStoreRequestBranch: TLabel
      Left = 16
      Top = 17
      Width = 72
      Height = 13
      Caption = #1058#1055' '#1043#1083#1072#1074#1085#1086
    end
    object edtStoreRequestNo: TDBEdit
      Left = 152
      Top = 33
      Width = 105
      Height = 21
      DataField = 'STORE_REQUEST_CODE'
      DataSource = dsData
      TabOrder = 0
    end
    object cbStoreRequestBranch: TJvDBLookupCombo
      Left = 16
      Top = 33
      Width = 121
      Height = 21
      DropDownWidth = 250
      DataField = 'STORE_REQUEST_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 1
    end
  end
  object gbDates: TGroupBox [4]
    Left = 8
    Top = 248
    Width = 161
    Height = 49
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055'/'#1058' '
    TabOrder = 3
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
  inline frOtherDept: TfrDeptFieldEditFrame [5]
    Left = 408
    Top = 248
    Width = 377
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 4
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 377
      Caption = ' '#1058#1055' '#1055#1086#1089#1090#1098#1087#1074#1072#1097#1086'/'#1058#1077#1075#1083#1077#1097#1086' '
      inherited pnlTreeNode: TPanel
        Width = 361
        inherited pnlTreeNodeName: TPanel
          Width = 214
          inherited edtTreeNodeName: TDBEdit
            Width = 213
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 214
        end
        inherited pnlRightButtons: TPanel
          Left = 325
        end
      end
    end
  end
  inline frStore: TfrDeptFilter [6]
    Left = 8
    Top = 96
    Width = 385
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Width = 385
      Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
      inherited lblsExternal: TLabel
        Width = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
      end
      inherited pnlNodes: TPanel
        Width = 369
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 344
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 247
            end
            item
              EditButtons = <>
              FieldName = 'NODE_IDENTIFIER'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 344
        end
      end
    end
  end
  inline frProduct: TfrParamProductFilter [7]
    Left = 408
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      inherited lblUsedBy: TLabel
        Width = 61
      end
      inherited lblProductOrigin: TLabel
        Width = 23
      end
      inherited lblCommonStatus: TLabel
        Width = 45
      end
      inherited lblIsActive: TLabel
        Width = 53
      end
      inherited pnlNodes: TPanel
        inherited grdChosenNodes: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
      inherited pnlParams: TPanel
        inherited grdChosenNodeParams: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_PARAM_NAME'
              Footers = <>
              Title.Caption = #1055#1088#1080#1089#1098#1097' '#1087#1072#1088#1072#1084#1077#1090#1098#1088
              Width = 206
            end
            item
              EditButtons = <>
              FieldName = 'DISPLAY_VALUE'
              Footers = <>
              Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090
              Width = 95
            end>
        end
      end
    end
  end
  object gbStoreDealID: TGroupBox [8]
    Left = 8
    Top = 8
    Width = 385
    Height = 81
    Caption = ' ID '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077'/'#1058#1077#1075#1083#1077#1085#1077' '
    TabOrder = 0
    object lblStoreDealNo: TLabel
      Left = 16
      Top = 24
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
    end
    object edtStoreDealNo: TDBEdit
      Left = 16
      Top = 40
      Width = 121
      Height = 21
      DataField = 'STORE_DEAL_NO'
      DataSource = dsData
      TabOrder = 0
    end
  end
  inline frBndProcess: TfrStoreDealBindingFilter [9]
    Left = 8
    Top = 376
    Width = 777
    Height = 81
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    TabStop = True
  end
  inherited alActions: TActionList [10]
    Left = 264
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' %ProductClas' +
        'sAbbrev%'
    end
  end
  inherited dsData: TDataSource [11]
    Left = 232
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 200
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 16
    Top = 456
  end
  inherited dsFilterVariants: TDataSource
    Left = 48
    Top = 456
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 32
    Top = 456
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 472
    Top = 344
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 143
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 504
    Top = 344
  end
end
